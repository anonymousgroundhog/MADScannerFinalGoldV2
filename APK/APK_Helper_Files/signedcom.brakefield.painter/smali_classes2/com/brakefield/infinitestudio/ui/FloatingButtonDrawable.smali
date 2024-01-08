.class public Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;
.super Landroid/graphics/drawable/StateListDrawable;
.source "FloatingButtonDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# instance fields
.field private color:I

.field private corner:F

.field private down:Z

.field private focus:F

.field private paint:Landroid/graphics/Paint;

.field private radius:F

.field private shadow:Landroid/graphics/Paint;

.field private shadowSize:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 23
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;->shadow:Landroid/graphics/Paint;

    .line 24
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;->paint:Landroid/graphics/Paint;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 26
    iput v0, p0, Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;->radius:F

    const/high16 v1, 0x40800000    # 4.0f

    .line 28
    invoke-static {v1}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v1

    iput v1, p0, Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;->shadowSize:F

    const/high16 v1, 0x40400000    # 3.0f

    .line 29
    invoke-static {v1}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v1

    iput v1, p0, Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;->corner:F

    .line 33
    iput v0, p0, Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;->focus:F

    .line 36
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getFABButtonColor()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;->init(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 39
    invoke-direct {p0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 23
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;->shadow:Landroid/graphics/Paint;

    .line 24
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;->paint:Landroid/graphics/Paint;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 26
    iput v0, p0, Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;->radius:F

    const/high16 v1, 0x40800000    # 4.0f

    .line 28
    invoke-static {v1}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v1

    iput v1, p0, Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;->shadowSize:F

    const/high16 v1, 0x40400000    # 3.0f

    .line 29
    invoke-static {v1}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v1

    iput v1, p0, Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;->corner:F

    .line 33
    iput v0, p0, Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;->focus:F

    .line 40
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;->init(I)V

    return-void
.end method

.method static synthetic access$002(Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;F)F
    .locals 0

    .line 20
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;->focus:F

    return p1
.end method

.method static synthetic access$102(Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;I)I
    .locals 0

    .line 20
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;->color:I

    return p1
.end method

.method private init(I)V
    .locals 1

    .line 44
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;->color:I

    .line 45
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;->shadow:Landroid/graphics/Paint;

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 81
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 86
    :cond_0
    new-instance v1, Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 88
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 89
    iget v2, p0, Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;->shadowSize:F

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v2, v3

    iget v3, p0, Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;->focus:F

    mul-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 91
    iget v2, p0, Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;->shadowSize:F

    mul-float/2addr v2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v3, v2

    iget v2, p0, Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;->focus:F

    mul-float/2addr v3, v2

    const/4 v2, 0x0

    :goto_0
    int-to-float v4, v2

    .line 93
    iget v5, p0, Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;->shadowSize:F

    iget v6, p0, Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;->focus:F

    mul-float/2addr v6, v5

    cmpg-float v6, v4, v6

    const/high16 v7, 0x40000000    # 2.0f

    if-gez v6, :cond_3

    .line 94
    iget-object v5, p0, Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;->shadow:Landroid/graphics/Paint;

    mul-float v6, v4, v3

    add-float/2addr v6, v3

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    const/high16 v5, 0x3f800000    # 1.0f

    .line 95
    invoke-virtual {v0, v5, v5}, Landroid/graphics/RectF;->inset(FF)V

    .line 97
    iget v6, p0, Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;->radius:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v8

    mul-float/2addr v6, v8

    div-float/2addr v6, v7

    mul-float/2addr v6, v5

    iget v8, p0, Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;->shadowSize:F

    sub-float v9, v8, v5

    div-float v9, v4, v9

    sub-float v9, v5, v9

    mul-float/2addr v8, v9

    add-float/2addr v6, v8

    .line 99
    iget v8, p0, Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;->corner:F

    cmpg-float v9, v6, v8

    if-gez v9, :cond_1

    move v6, v8

    .line 102
    :cond_1
    iget v8, p0, Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;->radius:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v9

    mul-float/2addr v8, v9

    div-float/2addr v8, v7

    mul-float/2addr v8, v5

    iget v7, p0, Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;->shadowSize:F

    sub-float v9, v7, v5

    div-float/2addr v4, v9

    sub-float/2addr v5, v4

    mul-float/2addr v7, v5

    add-float/2addr v8, v7

    .line 104
    iget v4, p0, Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;->corner:F

    cmpg-float v5, v8, v4

    if-gez v5, :cond_2

    move v8, v4

    .line 107
    :cond_2
    iget-object v4, p0, Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;->shadow:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v6, v8, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 110
    :cond_3
    invoke-virtual {v1, v5, v5}, Landroid/graphics/RectF;->inset(FF)V

    .line 112
    iget v2, p0, Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;->color:I

    .line 114
    iget-boolean v3, p0, Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;->down:Z

    if-eqz v3, :cond_5

    const/4 v3, 0x3

    new-array v3, v3, [F

    .line 116
    invoke-static {v2, v3}, Lcom/brakefield/infinitestudio/color/HSLColor;->fromRGB(I[F)[F

    const/4 v2, 0x2

    aget v4, v3, v2

    const/high16 v5, 0x3f000000    # 0.5f

    cmpg-float v5, v4, v5

    const v6, 0x3e4ccccd    # 0.2f

    if-gez v5, :cond_4

    add-float/2addr v4, v6

    aput v4, v3, v2

    goto :goto_1

    :cond_4
    sub-float/2addr v4, v6

    aput v4, v3, v2

    .line 122
    :goto_1
    invoke-static {v3}, Lcom/brakefield/infinitestudio/color/HSLColor;->toRGB([F)I

    move-result v2

    .line 125
    :cond_5
    iget-object v3, p0, Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 127
    iget v2, p0, Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;->radius:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    mul-float/2addr v2, v3

    div-float/2addr v2, v7

    iget v3, p0, Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;->radius:F

    .line 128
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    mul-float/2addr v3, v0

    div-float/2addr v3, v7

    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;->paint:Landroid/graphics/Paint;

    .line 127
    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public focus()V
    .locals 3

    .line 164
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;->focus:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    return-void

    .line 166
    :cond_0
    new-instance v0, Landroid/animation/FloatEvaluator;

    invoke-direct {v0}, Landroid/animation/FloatEvaluator;-><init>()V

    iget v1, p0, Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;->focus:F

    .line 167
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 166
    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 169
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 171
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 174
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getFABButtonColor()I

    move-result v1

    .line 176
    new-instance v2, Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable$1;

    invoke-direct {v2, p0, v1}, Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable$1;-><init>(Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;I)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 204
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 3

    .line 143
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;->shadowSize:F

    iget v1, p0, Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;->corner:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    const/4 v1, 0x0

    .line 144
    invoke-virtual {p1, v1, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    return v1
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 7

    .line 56
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;->getState()[I

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 59
    :goto_0
    array-length v4, v0

    const/4 v5, 0x1

    if-ge v2, v4, :cond_1

    .line 60
    aget v4, v0, v2

    const v6, 0x10100a7

    if-ne v4, v6, :cond_0

    move v3, v5

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    .line 67
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;->down:Z

    if-nez v0, :cond_2

    .line 68
    iput-boolean v5, p0, Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;->down:Z

    goto :goto_1

    :cond_2
    if-nez v3, :cond_3

    .line 69
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;->down:Z

    if-eqz v0, :cond_3

    .line 70
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;->down:Z

    .line 73
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;->invalidateSelf()V

    .line 75
    invoke-super {p0, p1}, Landroid/graphics/drawable/StateListDrawable;->onStateChange([I)Z

    move-result p1

    return p1
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColor(I)V
    .locals 0

    .line 160
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;->color:I

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setRadus(F)V
    .locals 0

    .line 154
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;->radius:F

    return-void
.end method

.method public unfocus()V
    .locals 3

    .line 208
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;->focus:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    return-void

    .line 210
    :cond_0
    new-instance v0, Landroid/animation/FloatEvaluator;

    invoke-direct {v0}, Landroid/animation/FloatEvaluator;-><init>()V

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;->focus:F

    sub-float/2addr v1, v2

    .line 211
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 210
    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x3c

    .line 213
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 215
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 218
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getFABButtonColor()I

    move-result v1

    .line 220
    new-instance v2, Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable$2;

    invoke-direct {v2, p0, v1}, Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable$2;-><init>(Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;I)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 248
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

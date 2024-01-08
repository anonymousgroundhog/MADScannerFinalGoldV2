.class public Lcom/brakefield/infinitestudio/ui/KnobDrawable;
.super Landroid/graphics/drawable/StateListDrawable;
.source "KnobDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# instance fields
.field private alpha:I

.field private globalAlpha:I

.field private paint:Landroid/graphics/Paint;

.field private shadow:Landroid/graphics/Paint;

.field private shadowSize:F


# direct methods
.method public constructor <init>(F)V
    .locals 2

    .line 26
    invoke-direct {p0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 18
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/KnobDrawable;->shadow:Landroid/graphics/Paint;

    .line 19
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/KnobDrawable;->paint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    .line 23
    iput v1, p0, Lcom/brakefield/infinitestudio/ui/KnobDrawable;->globalAlpha:I

    .line 24
    iput v1, p0, Lcom/brakefield/infinitestudio/ui/KnobDrawable;->alpha:I

    const/4 v1, -0x1

    .line 27
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 28
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/KnobDrawable;->shadowSize:F

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 55
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/KnobDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 59
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    .line 60
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    .line 62
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v0, v3

    iget v3, p0, Lcom/brakefield/infinitestudio/ui/KnobDrawable;->shadowSize:F

    sub-float/2addr v0, v3

    float-to-int v0, v0

    .line 64
    new-instance v3, Landroid/graphics/RectF;

    int-to-float v0, v0

    sub-float v4, v1, v0

    sub-float v5, v2, v0

    add-float/2addr v1, v0

    add-float/2addr v2, v0

    invoke-direct {v3, v4, v5, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 65
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 67
    iget v1, p0, Lcom/brakefield/infinitestudio/ui/KnobDrawable;->shadowSize:F

    mul-float/2addr v1, v1

    const/high16 v2, 0x430c0000    # 140.0f

    div-float/2addr v2, v1

    const/4 v1, 0x0

    :goto_0
    int-to-float v4, v1

    .line 69
    iget v5, p0, Lcom/brakefield/infinitestudio/ui/KnobDrawable;->shadowSize:F

    cmpg-float v6, v4, v5

    const/high16 v7, 0x437f0000    # 255.0f

    if-gez v6, :cond_1

    .line 70
    iget-object v5, p0, Lcom/brakefield/infinitestudio/ui/KnobDrawable;->shadow:Landroid/graphics/Paint;

    mul-float/2addr v4, v2

    add-float/2addr v4, v2

    iget v6, p0, Lcom/brakefield/infinitestudio/ui/KnobDrawable;->globalAlpha:I

    int-to-float v6, v6

    div-float/2addr v6, v7

    mul-float/2addr v4, v6

    float-to-int v4, v4

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    const/high16 v4, 0x3f800000    # 1.0f

    .line 71
    invoke-virtual {v0, v4, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 72
    iget-object v4, p0, Lcom/brakefield/infinitestudio/ui/KnobDrawable;->shadow:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {v3, v5, v5}, Landroid/graphics/RectF;->inset(FF)V

    .line 77
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/KnobDrawable;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/brakefield/infinitestudio/ui/KnobDrawable;->globalAlpha:I

    int-to-float v1, v1

    iget v2, p0, Lcom/brakefield/infinitestudio/ui/KnobDrawable;->alpha:I

    int-to-float v2, v2

    div-float/2addr v2, v7

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 79
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/KnobDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 3

    .line 39
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/KnobDrawable;->getState()[I

    move-result-object v0

    const/4 v1, 0x0

    .line 42
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 43
    aget v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/KnobDrawable;->invalidateSelf()V

    .line 49
    invoke-super {p0, p1}, Landroid/graphics/drawable/StateListDrawable;->onStateChange([I)Z

    move-result p1

    return p1
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    .line 84
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/KnobDrawable;->globalAlpha:I

    return-void
.end method

.method public setColor(I)V
    .locals 1

    .line 113
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iput v0, p0, Lcom/brakefield/infinitestudio/ui/KnobDrawable;->alpha:I

    .line 114
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/KnobDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 116
    invoke-static {p1}, Lcom/brakefield/infinitestudio/color/ColorUtils;->getBrightness(I)F

    move-result p1

    const/high16 v0, 0x3e800000    # 0.25f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    .line 117
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/KnobDrawable;->shadow:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 119
    :cond_0
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/KnobDrawable;->shadow:Landroid/graphics/Paint;

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    return-void
.end method

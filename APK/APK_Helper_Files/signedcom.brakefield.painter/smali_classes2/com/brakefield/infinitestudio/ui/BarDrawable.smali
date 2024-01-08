.class public Lcom/brakefield/infinitestudio/ui/BarDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "BarDrawable.java"


# instance fields
.field private corner:F

.field private dp_16:F

.field private dp_4:F

.field private paint:Landroid/graphics/Paint;

.field private shadow:Landroid/graphics/Paint;

.field private shadowSize:F

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 31
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 20
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/BarDrawable;->shadow:Landroid/graphics/Paint;

    .line 21
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/BarDrawable;->paint:Landroid/graphics/Paint;

    .line 32
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/BarDrawable;->view:Landroid/view/View;

    .line 33
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getForegroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 34
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/BarDrawable;->shadow:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    const/high16 p1, 0x40800000    # 4.0f

    .line 37
    invoke-static {p1}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result p1

    iput p1, p0, Lcom/brakefield/infinitestudio/ui/BarDrawable;->dp_4:F

    const/high16 p1, 0x41800000    # 16.0f

    .line 38
    invoke-static {p1}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result p1

    iput p1, p0, Lcom/brakefield/infinitestudio/ui/BarDrawable;->dp_16:F

    .line 40
    iget p1, p0, Lcom/brakefield/infinitestudio/ui/BarDrawable;->dp_4:F

    iput p1, p0, Lcom/brakefield/infinitestudio/ui/BarDrawable;->shadowSize:F

    .line 41
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/BarDrawable;->corner:F

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 47
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/BarDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 52
    iget-object v2, p0, Lcom/brakefield/infinitestudio/ui/BarDrawable;->view:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    aget v1, v1, v4

    .line 55
    iget-object v5, p0, Lcom/brakefield/infinitestudio/ui/BarDrawable;->view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v3

    .line 56
    iget-object v6, p0, Lcom/brakefield/infinitestudio/ui/BarDrawable;->view:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v1

    .line 58
    iget-object v7, p0, Lcom/brakefield/infinitestudio/ui/BarDrawable;->view:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 59
    iget-object v8, p0, Lcom/brakefield/infinitestudio/ui/BarDrawable;->view:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v9, -0x1

    if-gtz v3, :cond_1

    if-ge v5, v7, :cond_1

    move v3, v2

    move v5, v9

    goto :goto_0

    :cond_1
    if-lez v3, :cond_2

    if-lt v5, v7, :cond_2

    move v3, v2

    move v5, v4

    goto :goto_0

    :cond_2
    if-gtz v3, :cond_3

    if-lt v5, v7, :cond_3

    move v5, v2

    move v3, v9

    goto :goto_0

    :cond_3
    move v5, v2

    move v3, v4

    :goto_0
    if-gtz v1, :cond_4

    if-ge v6, v8, :cond_4

    :goto_1
    move v4, v2

    goto :goto_2

    :cond_4
    if-lez v1, :cond_5

    if-lt v6, v8, :cond_5

    move v9, v4

    goto :goto_1

    :cond_5
    if-gtz v1, :cond_6

    if-lt v6, v8, :cond_6

    move v4, v9

    :cond_6
    move v9, v2

    :goto_2
    if-eqz v3, :cond_7

    if-eqz v4, :cond_7

    .line 93
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v1, v6

    iput v1, p0, Lcom/brakefield/infinitestudio/ui/BarDrawable;->corner:F

    .line 94
    iget v6, p0, Lcom/brakefield/infinitestudio/ui/BarDrawable;->dp_16:F

    cmpl-float v1, v1, v6

    if-lez v1, :cond_8

    .line 95
    iput v6, p0, Lcom/brakefield/infinitestudio/ui/BarDrawable;->corner:F

    goto :goto_3

    .line 96
    :cond_7
    iget v1, p0, Lcom/brakefield/infinitestudio/ui/BarDrawable;->dp_4:F

    iput v1, p0, Lcom/brakefield/infinitestudio/ui/BarDrawable;->corner:F

    .line 98
    :cond_8
    :goto_3
    new-instance v1, Landroid/graphics/RectF;

    iget v6, v0, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget v7, v0, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    iget v8, v0, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    invoke-direct {v1, v6, v7, v8, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 99
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 101
    iget v6, p0, Lcom/brakefield/infinitestudio/ui/BarDrawable;->shadowSize:F

    mul-float/2addr v6, v6

    const/high16 v7, 0x430c0000    # 140.0f

    div-float/2addr v7, v6

    if-gtz v3, :cond_9

    if-gtz v4, :cond_9

    if-gtz v5, :cond_9

    if-lez v9, :cond_c

    :cond_9
    :goto_4
    int-to-float v6, v2

    .line 104
    iget v8, p0, Lcom/brakefield/infinitestudio/ui/BarDrawable;->shadowSize:F

    cmpg-float v10, v6, v8

    if-gez v10, :cond_a

    .line 105
    iget-object v8, p0, Lcom/brakefield/infinitestudio/ui/BarDrawable;->shadow:Landroid/graphics/Paint;

    mul-float v10, v6, v7

    add-float/2addr v10, v7

    float-to-int v10, v10

    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    int-to-float v8, v3

    int-to-float v10, v4

    .line 106
    invoke-virtual {v0, v8, v10}, Landroid/graphics/RectF;->inset(FF)V

    int-to-float v8, v5

    int-to-float v10, v9

    .line 107
    invoke-virtual {v0, v8, v10}, Landroid/graphics/RectF;->offset(FF)V

    .line 108
    iget v8, p0, Lcom/brakefield/infinitestudio/ui/BarDrawable;->corner:F

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float/2addr v8, v10

    iget v11, p0, Lcom/brakefield/infinitestudio/ui/BarDrawable;->shadowSize:F

    sub-float v12, v11, v10

    div-float/2addr v6, v12

    sub-float/2addr v10, v6

    mul-float/2addr v11, v10

    add-float/2addr v8, v11

    iget-object v6, p0, Lcom/brakefield/infinitestudio/ui/BarDrawable;->shadow:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v0, v8, v6}, Lcom/brakefield/infinitestudio/ui/BarDrawable;->drawPath(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_a
    int-to-float v0, v3

    mul-float/2addr v0, v8

    int-to-float v2, v4

    mul-float/2addr v8, v2

    .line 111
    invoke-virtual {v1, v0, v8}, Landroid/graphics/RectF;->inset(FF)V

    .line 112
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/BarDrawable;->shadowSize:F

    int-to-float v2, v5

    mul-float/2addr v2, v0

    int-to-float v3, v9

    mul-float/2addr v0, v3

    invoke-virtual {v1, v2, v0}, Landroid/graphics/RectF;->offset(FF)V

    .line 114
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/BarDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    const/16 v2, 0xff

    if-ge v0, v2, :cond_b

    .line 115
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/BarDrawable;->paint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 116
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/BarDrawable;->corner:F

    iget-object v2, p0, Lcom/brakefield/infinitestudio/ui/BarDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 117
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/BarDrawable;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 120
    :cond_b
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/BarDrawable;->corner:F

    iget-object v2, p0, Lcom/brakefield/infinitestudio/ui/BarDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_c
    return-void
.end method

.method drawPath(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/graphics/Paint;)V
    .locals 0

    .line 125
    invoke-virtual {p1, p2, p3, p3, p4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 8

    .line 136
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/BarDrawable;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 137
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/BarDrawable;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 140
    iget-object v3, p0, Lcom/brakefield/infinitestudio/ui/BarDrawable;->view:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v3, 0x0

    aget v4, v2, v3

    const/4 v5, 0x1

    aget v2, v2, v5

    .line 143
    iget-object v6, p0, Lcom/brakefield/infinitestudio/ui/BarDrawable;->view:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v6, v4

    .line 144
    iget-object v7, p0, Lcom/brakefield/infinitestudio/ui/BarDrawable;->view:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v7, v2

    if-nez v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    if-ne v6, v0, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v5

    :goto_1
    if-nez v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    move v2, v5

    :goto_2
    if-ne v7, v1, :cond_3

    move v5, v3

    .line 158
    :cond_3
    iget v1, p0, Lcom/brakefield/infinitestudio/ui/BarDrawable;->shadowSize:F

    float-to-int v1, v1

    mul-int/2addr v4, v1

    mul-int/2addr v2, v1

    mul-int/2addr v0, v1

    mul-int/2addr v5, v1

    .line 159
    invoke-virtual {p1, v4, v2, v0, v5}, Landroid/graphics/Rect;->set(IIII)V

    return v3
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

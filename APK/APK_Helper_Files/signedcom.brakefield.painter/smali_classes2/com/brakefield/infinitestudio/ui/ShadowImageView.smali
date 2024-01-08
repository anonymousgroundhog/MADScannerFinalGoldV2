.class public Lcom/brakefield/infinitestudio/ui/ShadowImageView;
.super Landroid/widget/ImageView;
.source "ShadowImageView.java"


# instance fields
.field private globalAlpha:F

.field private prevResId:I

.field private final radius:F

.field private shadow:Landroid/graphics/Bitmap;

.field private shadowColor:I

.field private final shadowPaint:Landroid/graphics/Paint;

.field private final shadowScale:F

.field private skipInvalidate:Z

.field private useShadow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->useShadow:Z

    const/high16 p1, 0x3f800000    # 1.0f

    .line 27
    invoke-static {p1}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v0

    iput v0, p0, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->radius:F

    .line 29
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->globalAlpha:F

    .line 31
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->shadowScale:F

    .line 32
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->shadowPaint:Landroid/graphics/Paint;

    const p1, -0xbbbbbc

    .line 33
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->shadowColor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->useShadow:Z

    const/high16 p1, 0x3f800000    # 1.0f

    .line 27
    invoke-static {p1}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result p2

    iput p2, p0, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->radius:F

    .line 29
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->globalAlpha:F

    .line 31
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->shadowScale:F

    .line 32
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->shadowPaint:Landroid/graphics/Paint;

    const p1, -0xbbbbbc

    .line 33
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->shadowColor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->useShadow:Z

    const/high16 p1, 0x3f800000    # 1.0f

    .line 27
    invoke-static {p1}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result p2

    iput p2, p0, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->radius:F

    .line 29
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->globalAlpha:F

    .line 31
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->shadowScale:F

    .line 32
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->shadowPaint:Landroid/graphics/Paint;

    const p1, -0xbbbbbc

    .line 33
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->shadowColor:I

    return-void
.end method

.method private getImageBitmap()Landroid/graphics/Bitmap;
    .locals 4

    .line 147
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 149
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 150
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 151
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 154
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 155
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 156
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v1
.end method


# virtual methods
.method blurInternal()Landroid/graphics/Bitmap;
    .locals 7

    .line 112
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->getImageBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 115
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-eqz v1, :cond_3

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    int-to-float v3, v1

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    .line 120
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v5, v2

    mul-float/2addr v5, v4

    .line 121
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    const/4 v6, 0x1

    .line 123
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 124
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-eq v3, v1, :cond_1

    if-eq v5, v2, :cond_1

    const/4 v1, 0x0

    .line 129
    invoke-static {v0, v3, v5, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 132
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 134
    :cond_2
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    iget v3, p0, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->radius:F

    mul-float/2addr v3, v2

    mul-float/2addr v3, v4

    invoke-static {v1, v0, v3}, Lcom/brakefield/infinitestudio/ui/RenderScriptHelper;->blur(Landroid/content/Context;Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 136
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 138
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 139
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    iget v5, p0, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->shadowColor:I

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/4 v4, 0x0

    .line 140
    invoke-virtual {v2, v1, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v0

    :cond_3
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlpha()F
    .locals 1

    .line 78
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->globalAlpha:F

    return v0
.end method

.method public invalidate()V
    .locals 1

    .line 93
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->skipInvalidate:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 48
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->globalAlpha:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 49
    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v4, p0, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->globalAlpha:F

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    const/16 v5, 0x1f

    invoke-virtual {p1, v3, v4, v5}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    .line 51
    :cond_1
    iget-boolean v3, p0, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->useShadow:Z

    if-nez v3, :cond_3

    .line 52
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    if-eqz v0, :cond_2

    .line 53
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    return-void

    .line 57
    :cond_3
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->skipInvalidate:Z

    .line 59
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->shadow:Landroid/graphics/Bitmap;

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->blurInternal()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->shadow:Landroid/graphics/Bitmap;

    .line 61
    :cond_4
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->shadow:Landroid/graphics/Bitmap;

    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->shadow:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->shadow:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v3, v2, v2, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->getHeight()I

    move-result v6

    invoke-direct {v4, v2, v2, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v5, p0, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->shadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 63
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    if-eqz v0, :cond_5

    .line 65
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 67
    :cond_5
    iput-boolean v2, p0, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->skipInvalidate:Z

    return-void
.end method

.method public setAlpha(F)V
    .locals 0

    .line 72
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->globalAlpha:F

    .line 73
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->invalidate()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 88
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->shadow:Landroid/graphics/Bitmap;

    .line 99
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    .line 104
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->prevResId:I

    if-ne p1, v0, :cond_0

    return-void

    .line 105
    :cond_0
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->prevResId:I

    const/4 v0, 0x0

    .line 106
    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->shadow:Landroid/graphics/Bitmap;

    .line 107
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setShadow(Z)V
    .locals 0

    .line 82
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->useShadow:Z

    .line 83
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->invalidate()V

    return-void
.end method

.method public setShadowColor(I)V
    .locals 0

    .line 162
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->shadowColor:I

    return-void
.end method

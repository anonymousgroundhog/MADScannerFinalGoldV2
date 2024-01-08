.class public Lcom/brakefield/infinitestudio/ui/SectionDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SectionDrawable.java"


# instance fields
.field private corner:F

.field private paint:Landroid/graphics/Paint;

.field private stroke:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 15
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/SectionDrawable;->paint:Landroid/graphics/Paint;

    const/high16 v0, 0x40800000    # 4.0f

    .line 16
    invoke-static {v0}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v0

    iput v0, p0, Lcom/brakefield/infinitestudio/ui/SectionDrawable;->corner:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 17
    invoke-static {v0}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v0

    iput v0, p0, Lcom/brakefield/infinitestudio/ui/SectionDrawable;->stroke:F

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 24
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/SectionDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 27
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

    .line 29
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/SectionDrawable;->paint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getForegroundColor()I

    move-result v2

    invoke-static {v2}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getClampedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 30
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/SectionDrawable;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 31
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/SectionDrawable;->corner:F

    iget-object v2, p0, Lcom/brakefield/infinitestudio/ui/SectionDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 33
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/SectionDrawable;->stroke:F

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v0, v2

    .line 35
    invoke-virtual {v1, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 37
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/SectionDrawable;->paint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getForegroundColor()I

    move-result v2

    invoke-static {v2}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getGrayerColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 38
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/SectionDrawable;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 39
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/SectionDrawable;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/brakefield/infinitestudio/ui/SectionDrawable;->stroke:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 40
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/SectionDrawable;->corner:F

    iget-object v2, p0, Lcom/brakefield/infinitestudio/ui/SectionDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

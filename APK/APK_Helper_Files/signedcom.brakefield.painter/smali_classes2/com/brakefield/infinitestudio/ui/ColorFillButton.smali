.class public Lcom/brakefield/infinitestudio/ui/ColorFillButton;
.super Lcom/brakefield/infinitestudio/ui/PullButton;
.source "ColorFillButton.java"


# instance fields
.field public color:I

.field private drawable:Landroid/graphics/drawable/Drawable;

.field needsMeasurement:Z

.field private paint:Landroid/graphics/Paint;

.field public prevColor:I

.field prevH:I

.field prevW:I

.field showPreviousColor:Z

.field private stroke:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 46
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/ui/PullButton;-><init>(Landroid/content/Context;)V

    const/high16 p1, -0x10000

    .line 21
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->color:I

    .line 22
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->prevColor:I

    const/4 p1, 0x0

    .line 26
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->prevW:I

    .line 27
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->prevH:I

    .line 29
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->showPreviousColor:Z

    .line 48
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->paint:Landroid/graphics/Paint;

    .line 50
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->stroke:Landroid/graphics/Paint;

    .line 51
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 52
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->stroke:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 54
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->needsMeasurement:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/brakefield/infinitestudio/ui/PullButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, -0x10000

    .line 21
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->color:I

    .line 22
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->prevColor:I

    const/4 p1, 0x0

    .line 26
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->prevW:I

    .line 27
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->prevH:I

    .line 29
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->showPreviousColor:Z

    .line 36
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->paint:Landroid/graphics/Paint;

    .line 38
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->stroke:Landroid/graphics/Paint;

    .line 39
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 40
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->stroke:Landroid/graphics/Paint;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 42
    iput-boolean p2, p0, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->needsMeasurement:Z

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 59
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->getWidth()I

    move-result v0

    .line 60
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->getHeight()I

    move-result v1

    .line 62
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 66
    iget v1, p0, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->prevW:I

    if-ne v0, v1, :cond_0

    iget v1, p0, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->prevH:I

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->needsMeasurement:Z

    .line 68
    :cond_1
    iput v0, p0, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->prevW:I

    .line 69
    iput v0, p0, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->prevH:I

    .line 71
    iget-boolean v1, p0, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->needsMeasurement:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->needsMeasurement:Z

    .line 73
    :cond_2
    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->getPaddingLeft()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v0, v1

    int-to-float v1, v1

    .line 74
    iget v2, p0, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->scaleValue:F

    mul-float/2addr v1, v2

    .line 75
    new-instance v2, Landroid/graphics/RectF;

    int-to-float v0, v0

    sub-float v3, v0, v1

    add-float/2addr v0, v1

    invoke-direct {v2, v3, v3, v0, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 77
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->color:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 80
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 81
    invoke-virtual {v2, v0}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 82
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 83
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 85
    :cond_3
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->showPreviousColor:Z

    if-eqz v0, :cond_4

    .line 86
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 87
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->prevColor:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v0, 0x40800000    # 4.0f

    div-float/2addr v1, v0

    .line 88
    invoke-virtual {v2, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 89
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 90
    :cond_4
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 93
    :goto_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->drawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_5

    .line 94
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->stroke:Landroid/graphics/Paint;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 95
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->stroke:Landroid/graphics/Paint;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 97
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->stroke:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 98
    invoke-virtual {v2, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 99
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->stroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_5
    return-void
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->drawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public setBackgroundColor(I)V
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 106
    invoke-static {p1, v0}, Lcom/brakefield/infinitestudio/color/HSLColor;->fromRGB(I[F)[F

    const/4 v1, 0x2

    aget v0, v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 108
    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->setProgress(I)V

    .line 110
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->color:I

    .line 111
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->postInvalidate()V

    return-void
.end method

.method public setColorFilter(I)V
    .locals 2

    .line 124
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 125
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->drawable:Landroid/graphics/drawable/Drawable;

    .line 116
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->postInvalidate()V

    return-void
.end method

.method public setPreviousColor(Z)V
    .locals 0

    .line 129
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->showPreviousColor:Z

    .line 130
    iget p1, p0, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->color:I

    iput p1, p0, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->prevColor:I

    return-void
.end method

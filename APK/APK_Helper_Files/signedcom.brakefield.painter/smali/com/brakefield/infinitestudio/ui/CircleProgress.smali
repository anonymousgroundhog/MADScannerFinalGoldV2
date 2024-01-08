.class public Lcom/brakefield/infinitestudio/ui/CircleProgress;
.super Landroid/view/View;
.source "CircleProgress.java"


# instance fields
.field private backPaint:Landroid/graphics/Paint;

.field private interp:Lcom/brakefield/infinitestudio/interpolators/Interpolator;

.field private paint:Landroid/graphics/Paint;

.field private prevTime:J

.field private set:Z

.field private total:I

.field private total2:I

.field private width1:F

.field private width2:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/CircleProgress;->paint:Landroid/graphics/Paint;

    .line 21
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/CircleProgress;->backPaint:Landroid/graphics/Paint;

    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/CircleProgress;->total:I

    .line 24
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/CircleProgress;->total2:I

    .line 25
    new-instance p1, Lcom/brakefield/infinitestudio/interpolators/BoomerangInterpolator;

    invoke-direct {p1}, Lcom/brakefield/infinitestudio/interpolators/BoomerangInterpolator;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/CircleProgress;->interp:Lcom/brakefield/infinitestudio/interpolators/Interpolator;

    const/high16 p1, 0x40800000    # 4.0f

    .line 26
    invoke-static {p1}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v0

    iput v0, p0, Lcom/brakefield/infinitestudio/ui/CircleProgress;->width1:F

    .line 27
    invoke-static {p1}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result p1

    iput p1, p0, Lcom/brakefield/infinitestudio/ui/CircleProgress;->width2:F

    .line 28
    iput-boolean p2, p0, Lcom/brakefield/infinitestudio/ui/CircleProgress;->set:Z

    .line 32
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/CircleProgress;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    .line 36
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/CircleProgress;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 37
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/CircleProgress;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/brakefield/infinitestudio/ui/CircleProgress;->width1:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 38
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/CircleProgress;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 39
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/CircleProgress;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CircleProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/brakefield/infinitestudio/R$color;->highlight:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 40
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/CircleProgress;->backPaint:Landroid/graphics/Paint;

    const/16 v1, 0x64

    const/16 v2, 0xff

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 46
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/CircleProgress;->set:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/CircleProgress;->set:Z

    .line 48
    iput v0, p0, Lcom/brakefield/infinitestudio/ui/CircleProgress;->total:I

    .line 49
    iput v0, p0, Lcom/brakefield/infinitestudio/ui/CircleProgress;->total2:I

    .line 50
    iput-wide v1, p0, Lcom/brakefield/infinitestudio/ui/CircleProgress;->prevTime:J

    .line 53
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 55
    iget-wide v5, p0, Lcom/brakefield/infinitestudio/ui/CircleProgress;->prevTime:J

    cmp-long v0, v5, v1

    if-nez v0, :cond_1

    .line 56
    iput-wide v3, p0, Lcom/brakefield/infinitestudio/ui/CircleProgress;->prevTime:J

    .line 57
    :cond_1
    iget-wide v0, p0, Lcom/brakefield/infinitestudio/ui/CircleProgress;->prevTime:J

    sub-long v0, v3, v0

    long-to-int v0, v0

    .line 59
    iget v1, p0, Lcom/brakefield/infinitestudio/ui/CircleProgress;->total:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/brakefield/infinitestudio/ui/CircleProgress;->total:I

    .line 60
    iget v2, p0, Lcom/brakefield/infinitestudio/ui/CircleProgress;->total2:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/brakefield/infinitestudio/ui/CircleProgress;->total2:I

    .line 62
    iput-wide v3, p0, Lcom/brakefield/infinitestudio/ui/CircleProgress;->prevTime:J

    .line 64
    rem-int/lit16 v1, v1, 0x3e8

    iput v1, p0, Lcom/brakefield/infinitestudio/ui/CircleProgress;->total:I

    int-to-float v0, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    .line 68
    rem-int/lit16 v2, v2, 0x7d0

    iput v2, p0, Lcom/brakefield/infinitestudio/ui/CircleProgress;->total2:I

    int-to-float v1, v2

    const/high16 v2, 0x44fa0000    # 2000.0f

    div-float/2addr v1, v2

    .line 72
    iget-object v2, p0, Lcom/brakefield/infinitestudio/ui/CircleProgress;->interp:Lcom/brakefield/infinitestudio/interpolators/Interpolator;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface {v2, v3, v0, v3}, Lcom/brakefield/infinitestudio/interpolators/Interpolator;->interpolate(FFF)F

    move-result v0

    const v2, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v2

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float v6, v1, v2

    .line 76
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CircleProgress;->getWidth()I

    move-result v1

    .line 77
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CircleProgress;->getHeight()I

    move-result v4

    .line 78
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget v7, p0, Lcom/brakefield/infinitestudio/ui/CircleProgress;->width1:F

    iget v8, p0, Lcom/brakefield/infinitestudio/ui/CircleProgress;->width2:F

    add-float v9, v7, v8

    sub-float/2addr v5, v9

    float-to-int v5, v5

    int-to-float v1, v1

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v1, v9

    int-to-float v4, v4

    div-float/2addr v4, v9

    .line 83
    iget-object v9, p0, Lcom/brakefield/infinitestudio/ui/CircleProgress;->paint:Landroid/graphics/Paint;

    sub-float v10, v3, v0

    mul-float/2addr v8, v10

    add-float/2addr v7, v8

    invoke-virtual {v9, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 85
    new-instance v7, Landroid/graphics/RectF;

    int-to-float v5, v5

    sub-float v8, v1, v5

    sub-float v9, v4, v5

    add-float/2addr v1, v5

    add-float/2addr v4, v5

    invoke-direct {v7, v8, v9, v1, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    mul-float/2addr v0, v2

    add-float/2addr v0, v3

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/brakefield/infinitestudio/ui/CircleProgress;->paint:Landroid/graphics/Paint;

    move-object v4, p1

    move-object v5, v7

    move v7, v0

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 87
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CircleProgress;->invalidate()V

    return-void
.end method

.method public setColor(I)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/CircleProgress;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

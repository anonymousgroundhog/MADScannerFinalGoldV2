.class public Lcom/brakefield/infinitestudio/ui/OpacityPullButton;
.super Lcom/brakefield/infinitestudio/ui/PullButton;
.source "OpacityPullButton.java"


# instance fields
.field private fillPaint:Landroid/graphics/Paint;

.field private pattern:Landroid/graphics/Paint;

.field private prevShaderProgress:F

.field private prevShaderSize:F

.field private shaderPaint:Landroid/graphics/Paint;

.field private stroke:Landroid/graphics/Paint;

.field private strokePaint:Landroid/graphics/Paint;

.field private useShader:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 34
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/ui/PullButton;-><init>(Landroid/content/Context;)V

    .line 23
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/OpacityPullButton;->shaderPaint:Landroid/graphics/Paint;

    .line 24
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/OpacityPullButton;->strokePaint:Landroid/graphics/Paint;

    .line 25
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/OpacityPullButton;->fillPaint:Landroid/graphics/Paint;

    .line 26
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/OpacityPullButton;->pattern:Landroid/graphics/Paint;

    .line 27
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/OpacityPullButton;->stroke:Landroid/graphics/Paint;

    const/4 p1, 0x0

    .line 29
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/OpacityPullButton;->useShader:Z

    const/high16 p1, -0x40800000    # -1.0f

    .line 30
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/OpacityPullButton;->prevShaderProgress:F

    const/4 p1, 0x0

    .line 31
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/OpacityPullButton;->prevShaderSize:F

    .line 35
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/OpacityPullButton;->setup()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/brakefield/infinitestudio/ui/PullButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/OpacityPullButton;->shaderPaint:Landroid/graphics/Paint;

    .line 24
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/OpacityPullButton;->strokePaint:Landroid/graphics/Paint;

    .line 25
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/OpacityPullButton;->fillPaint:Landroid/graphics/Paint;

    .line 26
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/OpacityPullButton;->pattern:Landroid/graphics/Paint;

    .line 27
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/OpacityPullButton;->stroke:Landroid/graphics/Paint;

    const/4 p1, 0x0

    .line 29
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/OpacityPullButton;->useShader:Z

    const/high16 p1, -0x40800000    # -1.0f

    .line 30
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/OpacityPullButton;->prevShaderProgress:F

    const/4 p1, 0x0

    .line 31
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/OpacityPullButton;->prevShaderSize:F

    .line 40
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/OpacityPullButton;->setup()V

    return-void
.end method

.method private setup()V
    .locals 5

    .line 44
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/OpacityPullButton;->strokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 45
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/OpacityPullButton;->strokePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 46
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/OpacityPullButton;->stroke:Landroid/graphics/Paint;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 48
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/OpacityPullButton;->pattern:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/BitmapShader;

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/OpacityPullButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/brakefield/infinitestudio/R$drawable;->transparent:I

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v4, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v2, v3, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 52
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/OpacityPullButton;->getWidth()I

    move-result v0

    .line 53
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/OpacityPullButton;->getHeight()I

    move-result v1

    .line 55
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x2

    .line 59
    div-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/OpacityPullButton;->getPaddingLeft()I

    move-result v2

    div-int/2addr v2, v1

    sub-int v2, v0, v2

    int-to-float v2, v2

    .line 60
    iget v3, p0, Lcom/brakefield/infinitestudio/ui/OpacityPullButton;->scaleValue:F

    mul-float/2addr v2, v3

    .line 61
    new-instance v3, Landroid/graphics/RectF;

    int-to-float v0, v0

    sub-float v4, v0, v2

    add-float/2addr v0, v2

    invoke-direct {v3, v4, v4, v0, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 62
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 64
    iget-object v4, p0, Lcom/brakefield/infinitestudio/ui/OpacityPullButton;->pattern:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    const/high16 v4, 0x40400000    # 3.0f

    div-float/2addr v2, v4

    .line 67
    invoke-virtual {v3, v2, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 71
    iget-boolean v2, p0, Lcom/brakefield/infinitestudio/ui/OpacityPullButton;->useShader:Z

    if-eqz v2, :cond_2

    .line 72
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v2

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v2, v4

    .line 73
    iget-object v4, p0, Lcom/brakefield/infinitestudio/ui/OpacityPullButton;->shaderPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v4

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/brakefield/infinitestudio/ui/OpacityPullButton;->prevShaderProgress:F

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/OpacityPullButton;->getProgress()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    iget v4, p0, Lcom/brakefield/infinitestudio/ui/OpacityPullButton;->prevShaderSize:F

    cmpl-float v4, v4, v2

    if-eqz v4, :cond_1

    .line 74
    :cond_0
    iget-object v4, p0, Lcom/brakefield/infinitestudio/ui/OpacityPullButton;->shaderPaint:Landroid/graphics/Paint;

    new-instance v12, Landroid/graphics/RadialGradient;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    iget-object v5, p0, Lcom/brakefield/infinitestudio/ui/OpacityPullButton;->fillPaint:Landroid/graphics/Paint;

    .line 75
    invoke-virtual {v5}, Landroid/graphics/Paint;->getColor()I

    move-result v5

    iget-object v8, p0, Lcom/brakefield/infinitestudio/ui/OpacityPullButton;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getColor()I

    move-result v8

    iget-object v9, p0, Lcom/brakefield/infinitestudio/ui/OpacityPullButton;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->getColor()I

    move-result v9

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/brakefield/infinitestudio/color/ColorUtils;->getTransparentColor(II)I

    move-result v9

    filled-new-array {v5, v8, v9}, [I

    move-result-object v9

    const/4 v5, 0x3

    new-array v11, v5, [F

    const/4 v5, 0x0

    aput v5, v11, v10

    .line 76
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/OpacityPullButton;->getProgress()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/OpacityPullButton;->getMax()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v5, v8

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v5, v8, v5

    const/4 v10, 0x1

    aput v5, v11, v10

    aput v8, v11, v1

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v5, v12

    move v8, v2

    move-object v10, v11

    move-object v11, v1

    invoke-direct/range {v5 .. v11}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 74
    invoke-virtual {v4, v12}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 78
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/OpacityPullButton;->getProgress()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/brakefield/infinitestudio/ui/OpacityPullButton;->prevShaderProgress:F

    .line 79
    iput v2, p0, Lcom/brakefield/infinitestudio/ui/OpacityPullButton;->prevShaderSize:F

    .line 82
    :cond_1
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/OpacityPullButton;->shaderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 84
    :cond_2
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 85
    invoke-virtual {v1, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 86
    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/OpacityPullButton;->getProgress()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/OpacityPullButton;->getMax()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v5

    mul-float/2addr v4, v5

    sub-float/2addr v2, v4

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 88
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 89
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 90
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/OpacityPullButton;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 91
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 94
    :goto_0
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/OpacityPullButton;->stroke:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 95
    invoke-virtual {v3, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 97
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/OpacityPullButton;->stroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public setColorFilter(I)V
    .locals 1

    .line 101
    invoke-super {p0, p1}, Lcom/brakefield/infinitestudio/ui/PullButton;->setColorFilter(I)V

    .line 102
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/OpacityPullButton;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/OpacityPullButton;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 104
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/OpacityPullButton;->stroke:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/OpacityPullButton;->stroke:Landroid/graphics/Paint;

    const/16 v0, 0x3c

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 106
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/OpacityPullButton;->invalidate()V

    return-void
.end method

.method public useShader(Z)V
    .locals 0

    .line 110
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/OpacityPullButton;->useShader:Z

    return-void
.end method

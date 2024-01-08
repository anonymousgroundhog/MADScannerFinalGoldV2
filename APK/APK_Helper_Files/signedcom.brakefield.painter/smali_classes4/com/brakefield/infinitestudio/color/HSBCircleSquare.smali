.class public Lcom/brakefield/infinitestudio/color/HSBCircleSquare;
.super Lcom/brakefield/infinitestudio/color/HSBCircleShape;
.source "HSBCircleSquare.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/color/HSBCircleShape;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected drawInnerShape(Landroid/graphics/Canvas;)V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/HSBCircleSquare;->rect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/color/HSBCircleSquare;->mColorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 35
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/HSBCircleSquare;->rect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/color/HSBCircleSquare;->mBrightPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected getDrawableId()I
    .locals 1

    .line 20
    sget v0, Lcom/brakefield/infinitestudio/R$drawable;->color_wheel:I

    return v0
.end method

.method protected updateControlFromSaturationBrightness()V
    .locals 5

    .line 40
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/HSBCircleSquare;->innerControl:Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/color/HSBCircleSquare;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/brakefield/infinitestudio/color/HSBCircleSquare;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/brakefield/infinitestudio/color/HSBCircleSquare;->hsv:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 41
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/HSBCircleSquare;->innerControl:Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/color/HSBCircleSquare;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/brakefield/infinitestudio/color/HSBCircleSquare;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/brakefield/infinitestudio/color/HSBCircleSquare;->hsv:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 43
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/HSBCircleSquare;->innerControl:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v1, p0, Lcom/brakefield/infinitestudio/color/HSBCircleSquare;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/HSBCircleSquare;->innerControl:Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/color/HSBCircleSquare;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iput v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/HSBCircleSquare;->innerControl:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget-object v1, p0, Lcom/brakefield/infinitestudio/color/HSBCircleSquare;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/HSBCircleSquare;->innerControl:Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/color/HSBCircleSquare;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iput v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/HSBCircleSquare;->innerControl:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v1, p0, Lcom/brakefield/infinitestudio/color/HSBCircleSquare;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/HSBCircleSquare;->innerControl:Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/color/HSBCircleSquare;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iput v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 46
    :cond_2
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/HSBCircleSquare;->innerControl:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget-object v1, p0, Lcom/brakefield/infinitestudio/color/HSBCircleSquare;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/HSBCircleSquare;->innerControl:Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/color/HSBCircleSquare;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iput v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    :cond_3
    return-void
.end method

.method protected updatePaints()V
    .locals 19

    move-object/from16 v0, p0

    const/4 v1, 0x3

    new-array v1, v1, [F

    .line 62
    iget-object v2, v0, Lcom/brakefield/infinitestudio/color/HSBCircleSquare;->hsv:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    aput v2, v1, v3

    const/4 v2, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v1, v2

    const/4 v2, 0x2

    aput v4, v1, v2

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v10

    .line 64
    new-instance v1, Landroid/graphics/LinearGradient;

    iget-object v4, v0, Lcom/brakefield/infinitestudio/color/HSBCircleSquare;->rect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v12, v4

    iget-object v4, v0, Lcom/brakefield/infinitestudio/color/HSBCircleSquare;->rect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v13, v4

    iget-object v4, v0, Lcom/brakefield/infinitestudio/color/HSBCircleSquare;->rect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v14, v4

    iget-object v4, v0, Lcom/brakefield/infinitestudio/color/HSBCircleSquare;->rect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v15, v4

    const/high16 v4, -0x1000000

    filled-new-array {v3, v4}, [I

    move-result-object v16

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    sget-object v18, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v11, v1

    move-object/from16 v17, v2

    invoke-direct/range {v11 .. v18}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 65
    iget-object v2, v0, Lcom/brakefield/infinitestudio/color/HSBCircleSquare;->mBrightPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 67
    new-instance v1, Landroid/graphics/LinearGradient;

    iget-object v2, v0, Lcom/brakefield/infinitestudio/color/HSBCircleSquare;->rect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v6, v2

    iget-object v2, v0, Lcom/brakefield/infinitestudio/color/HSBCircleSquare;->rect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v7, v2

    iget-object v2, v0, Lcom/brakefield/infinitestudio/color/HSBCircleSquare;->rect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v8, v2

    iget-object v2, v0, Lcom/brakefield/infinitestudio/color/HSBCircleSquare;->rect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v9, v2

    const/4 v11, -0x1

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v5, v1

    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 68
    iget-object v2, v0, Lcom/brakefield/infinitestudio/color/HSBCircleSquare;->mColorPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 70
    iget-object v1, v0, Lcom/brakefield/infinitestudio/color/HSBCircleSquare;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/color/HSBCircleSquare;->getColor()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/brakefield/infinitestudio/color/HSBCircleSquare;->toneLock(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    iget-object v1, v0, Lcom/brakefield/infinitestudio/color/HSBCircleSquare;->prevPaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/brakefield/infinitestudio/color/HSBCircleSquare;->prevColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/color/HSBCircleSquare;->postInvalidate()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected updateRect()V
    .locals 6

    .line 25
    iget v0, p0, Lcom/brakefield/infinitestudio/color/HSBCircleSquare;->w:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    .line 26
    iget v2, p0, Lcom/brakefield/infinitestudio/color/HSBCircleSquare;->h:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    .line 27
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    mul-float/2addr v3, v1

    .line 29
    iget-object v1, p0, Lcom/brakefield/infinitestudio/color/HSBCircleSquare;->rect:Landroid/graphics/Rect;

    sub-float v4, v0, v3

    float-to-int v4, v4

    sub-float v5, v2, v3

    float-to-int v5, v5

    add-float/2addr v0, v3

    float-to-int v0, v0

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v4, v5, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method protected updateSaturationBrightnessFromXY(FF)V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/HSBCircleSquare;->hsv:[F

    iget-object v1, p0, Lcom/brakefield/infinitestudio/color/HSBCircleSquare;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    sub-float/2addr p1, v1

    iget-object v1, p0, Lcom/brakefield/infinitestudio/color/HSBCircleSquare;->rect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 52
    iget-object p1, p0, Lcom/brakefield/infinitestudio/color/HSBCircleSquare;->hsv:[F

    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/HSBCircleSquare;->hsv:[F

    aget v0, v0, v1

    invoke-static {v0}, Lcom/brakefield/infinitestudio/color/ColorUtils;->clamp(F)F

    move-result v0

    aput v0, p1, v1

    .line 54
    iget-object p1, p0, Lcom/brakefield/infinitestudio/color/HSBCircleSquare;->hsv:[F

    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/HSBCircleSquare;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float/2addr p2, v0

    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/HSBCircleSquare;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    const/4 v0, 0x2

    aput p2, p1, v0

    .line 55
    iget-object p1, p0, Lcom/brakefield/infinitestudio/color/HSBCircleSquare;->hsv:[F

    iget-object p2, p0, Lcom/brakefield/infinitestudio/color/HSBCircleSquare;->hsv:[F

    aget p2, p2, v0

    invoke-static {p2}, Lcom/brakefield/infinitestudio/color/ColorUtils;->clamp(F)F

    move-result p2

    aput p2, p1, v0

    .line 56
    iget-object p1, p0, Lcom/brakefield/infinitestudio/color/HSBCircleSquare;->hsv:[F

    iget-object p2, p0, Lcom/brakefield/infinitestudio/color/HSBCircleSquare;->hsv:[F

    aget p2, p2, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p2

    aput v1, p1, v0

    return-void
.end method

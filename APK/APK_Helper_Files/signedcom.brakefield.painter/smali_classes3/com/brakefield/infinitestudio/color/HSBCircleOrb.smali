.class public Lcom/brakefield/infinitestudio/color/HSBCircleOrb;
.super Lcom/brakefield/infinitestudio/color/HSBCircleShape;
.source "HSBCircleOrb.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/color/HSBCircleShape;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected drawInnerShape(Landroid/graphics/Canvas;)V
    .locals 4

    .line 38
    iget v0, p0, Lcom/brakefield/infinitestudio/color/HSBCircleOrb;->w:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    .line 39
    iget v2, p0, Lcom/brakefield/infinitestudio/color/HSBCircleOrb;->h:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    .line 41
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const v3, 0x40333333    # 2.8f

    div-float/2addr v1, v3

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v1, v3

    .line 44
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v3, 0x42340000    # 45.0f

    .line 45
    invoke-virtual {p1, v3, v0, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 46
    iget-object v3, p0, Lcom/brakefield/infinitestudio/color/HSBCircleOrb;->mColorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 47
    iget-object v3, p0, Lcom/brakefield/infinitestudio/color/HSBCircleOrb;->mBrightPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 48
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected getDrawableId()I
    .locals 1

    .line 23
    sget v0, Lcom/brakefield/infinitestudio/R$drawable;->color_wheel_circle:I

    return v0
.end method

.method protected updateControlFromSaturationBrightness()V
    .locals 10

    .line 54
    iget v0, p0, Lcom/brakefield/infinitestudio/color/HSBCircleOrb;->w:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    .line 55
    iget v2, p0, Lcom/brakefield/infinitestudio/color/HSBCircleOrb;->h:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    .line 57
    iget-object v3, p0, Lcom/brakefield/infinitestudio/color/HSBCircleOrb;->rect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/brakefield/infinitestudio/color/HSBCircleOrb;->rect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/brakefield/infinitestudio/color/HSBCircleOrb;->hsv:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    .line 58
    iget-object v4, p0, Lcom/brakefield/infinitestudio/color/HSBCircleOrb;->rect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/brakefield/infinitestudio/color/HSBCircleOrb;->rect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/brakefield/infinitestudio/color/HSBCircleOrb;->hsv:[F

    const/4 v7, 0x2

    aget v6, v6, v7

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v7, v6

    mul-float/2addr v5, v7

    add-float/2addr v4, v5

    .line 60
    iget-object v5, p0, Lcom/brakefield/infinitestudio/color/HSBCircleOrb;->rect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v1

    .line 62
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Line;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(FFFF)V

    .line 63
    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/geometry/Line;->getLength()F

    move-result v3

    .line 65
    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v1

    cmpl-float v4, v3, v5

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    move v5, v3

    .line 69
    :goto_0
    iget-object v3, p0, Lcom/brakefield/infinitestudio/color/HSBCircleOrb;->innerControl:Lcom/brakefield/infinitestudio/geometry/Point;

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v1, v8

    mul-float/2addr v1, v5

    add-float/2addr v1, v0

    iput v1, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 70
    iget-object v1, p0, Lcom/brakefield/infinitestudio/color/HSBCircleOrb;->innerControl:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v5, v3

    add-float/2addr v5, v2

    iput v5, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 72
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v3, 0x42340000    # 45.0f

    .line 73
    invoke-virtual {v1, v3, v0, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 74
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/HSBCircleOrb;->innerControl:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method protected updatePaints()V
    .locals 19

    move-object/from16 v0, p0

    const/4 v1, 0x3

    new-array v1, v1, [F

    .line 102
    iget-object v2, v0, Lcom/brakefield/infinitestudio/color/HSBCircleOrb;->hsv:[F

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

    .line 104
    new-instance v1, Landroid/graphics/LinearGradient;

    iget-object v4, v0, Lcom/brakefield/infinitestudio/color/HSBCircleOrb;->rect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v12, v4

    iget-object v4, v0, Lcom/brakefield/infinitestudio/color/HSBCircleOrb;->rect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v13, v4

    iget-object v4, v0, Lcom/brakefield/infinitestudio/color/HSBCircleOrb;->rect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v14, v4

    iget-object v4, v0, Lcom/brakefield/infinitestudio/color/HSBCircleOrb;->rect:Landroid/graphics/Rect;

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

    .line 107
    iget-object v2, v0, Lcom/brakefield/infinitestudio/color/HSBCircleOrb;->mBrightPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 109
    new-instance v1, Landroid/graphics/LinearGradient;

    iget-object v2, v0, Lcom/brakefield/infinitestudio/color/HSBCircleOrb;->rect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v6, v2

    iget-object v2, v0, Lcom/brakefield/infinitestudio/color/HSBCircleOrb;->rect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v7, v2

    iget-object v2, v0, Lcom/brakefield/infinitestudio/color/HSBCircleOrb;->rect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v8, v2

    iget-object v2, v0, Lcom/brakefield/infinitestudio/color/HSBCircleOrb;->rect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v9, v2

    const/4 v11, -0x1

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v5, v1

    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 111
    iget-object v2, v0, Lcom/brakefield/infinitestudio/color/HSBCircleOrb;->mColorPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 113
    iget-object v1, v0, Lcom/brakefield/infinitestudio/color/HSBCircleOrb;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/color/HSBCircleOrb;->getColor()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/brakefield/infinitestudio/color/HSBCircleOrb;->toneLock(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 114
    iget-object v1, v0, Lcom/brakefield/infinitestudio/color/HSBCircleOrb;->prevPaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/brakefield/infinitestudio/color/HSBCircleOrb;->prevColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 116
    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/color/HSBCircleOrb;->postInvalidate()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected updateRect()V
    .locals 6

    .line 28
    iget v0, p0, Lcom/brakefield/infinitestudio/color/HSBCircleOrb;->w:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    .line 29
    iget v2, p0, Lcom/brakefield/infinitestudio/color/HSBCircleOrb;->h:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    .line 30
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const v3, 0x40333333    # 2.8f

    div-float/2addr v1, v3

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v1, v3

    .line 32
    iget-object v3, p0, Lcom/brakefield/infinitestudio/color/HSBCircleOrb;->rect:Landroid/graphics/Rect;

    sub-float v4, v0, v1

    float-to-int v4, v4

    sub-float v5, v2, v1

    float-to-int v5, v5

    add-float/2addr v0, v1

    float-to-int v0, v0

    add-float/2addr v2, v1

    float-to-int v1, v2

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method protected updateSaturationBrightnessFromXY(FF)V
    .locals 3

    .line 80
    iget v0, p0, Lcom/brakefield/infinitestudio/color/HSBCircleOrb;->w:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    .line 81
    iget v2, p0, Lcom/brakefield/infinitestudio/color/HSBCircleOrb;->h:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    .line 83
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v1, p1, p2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 84
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    const/high16 p2, -0x3dcc0000    # -45.0f

    .line 85
    invoke-virtual {p1, p2, v0, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 86
    invoke-virtual {v1, p1}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 88
    iget p1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 89
    iget p2, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 91
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/HSBCircleOrb;->hsv:[F

    iget-object v1, p0, Lcom/brakefield/infinitestudio/color/HSBCircleOrb;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    sub-float/2addr p1, v1

    iget-object v1, p0, Lcom/brakefield/infinitestudio/color/HSBCircleOrb;->rect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 92
    iget-object p1, p0, Lcom/brakefield/infinitestudio/color/HSBCircleOrb;->hsv:[F

    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/HSBCircleOrb;->hsv:[F

    aget v0, v0, v1

    invoke-static {v0}, Lcom/brakefield/infinitestudio/color/ColorUtils;->clamp(F)F

    move-result v0

    aput v0, p1, v1

    .line 94
    iget-object p1, p0, Lcom/brakefield/infinitestudio/color/HSBCircleOrb;->hsv:[F

    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/HSBCircleOrb;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float/2addr p2, v0

    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/HSBCircleOrb;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    const/4 v0, 0x2

    aput p2, p1, v0

    .line 95
    iget-object p1, p0, Lcom/brakefield/infinitestudio/color/HSBCircleOrb;->hsv:[F

    iget-object p2, p0, Lcom/brakefield/infinitestudio/color/HSBCircleOrb;->hsv:[F

    aget p2, p2, v0

    invoke-static {p2}, Lcom/brakefield/infinitestudio/color/ColorUtils;->clamp(F)F

    move-result p2

    aput p2, p1, v0

    .line 96
    iget-object p1, p0, Lcom/brakefield/infinitestudio/color/HSBCircleOrb;->hsv:[F

    iget-object p2, p0, Lcom/brakefield/infinitestudio/color/HSBCircleOrb;->hsv:[F

    aget p2, p2, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p2

    aput v1, p1, v0

    return-void
.end method

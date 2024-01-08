.class public Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;
.super Lcom/brakefield/infinitestudio/color/HSBCircleShape;
.source "HSBCircleDiamond.java"


# instance fields
.field private touchRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/color/HSBCircleShape;-><init>(Landroid/content/Context;)V

    .line 18
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->touchRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method protected drawInnerShape(Landroid/graphics/Canvas;)V
    .locals 3

    .line 44
    iget v0, p0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->w:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    .line 45
    iget v2, p0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->h:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    .line 47
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v1, 0x42340000    # 45.0f

    .line 48
    invoke-virtual {p1, v1, v0, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 49
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->rect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->mColorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 50
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->rect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->mBrightPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 51
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected getDrawableId()I
    .locals 1

    .line 26
    sget v0, Lcom/brakefield/infinitestudio/R$drawable;->color_wheel_diamond:I

    return v0
.end method

.method protected updateControlFromSaturationBrightness()V
    .locals 11

    .line 57
    iget v0, p0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->w:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    .line 58
    iget v2, p0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->h:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    .line 60
    iget-object v3, p0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->hsl:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    sub-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v3, v5

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v3, v6, v3

    iget-object v7, p0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->touchRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v3, v7

    mul-float/2addr v3, v1

    .line 62
    iget-object v7, p0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->innerControl:Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v8, p0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->touchRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->hsl:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    sub-float/2addr v9, v1

    mul-float/2addr v9, v5

    mul-float/2addr v9, v3

    add-float/2addr v8, v9

    iput v8, v7, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 63
    iget-object v1, p0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->innerControl:Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v3, p0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->touchRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget-object v5, p0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->touchRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    iget-object v7, p0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->hsl:[F

    aget v4, v7, v4

    sub-float/2addr v6, v4

    mul-float/2addr v5, v6

    add-float/2addr v3, v5

    iput v3, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 65
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v3, 0x42340000    # 45.0f

    .line 66
    invoke-virtual {v1, v3, v0, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 68
    iget-object v3, p0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->innerControl:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {v3, v1}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 70
    iget-object v3, p0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->innerControl:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v4, p0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->rect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    iget-object v3, p0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->innerControl:Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v4, p0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->rect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iput v4, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 71
    :cond_0
    iget-object v3, p0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->innerControl:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget-object v4, p0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->rect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    iget-object v3, p0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->innerControl:Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v4, p0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->rect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iput v4, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 72
    :cond_1
    iget-object v3, p0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->innerControl:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v4, p0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->rect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->innerControl:Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v4, p0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->rect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iput v4, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 73
    :cond_2
    iget-object v3, p0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->innerControl:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget-object v4, p0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->rect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->innerControl:Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v4, p0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->rect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    iput v4, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    :cond_3
    const/high16 v3, -0x3dcc0000    # -45.0f

    .line 75
    invoke-virtual {v1, v3, v0, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 76
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->innerControl:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method protected updatePaints()V
    .locals 20

    move-object/from16 v0, p0

    const/4 v1, 0x3

    new-array v2, v1, [F

    .line 121
    iget-object v3, v0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->hsv:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    aput v3, v2, v4

    const/4 v3, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v2, v3

    const/4 v3, 0x2

    aput v5, v2, v3

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v11

    .line 123
    new-instance v2, Landroid/graphics/LinearGradient;

    iget-object v3, v0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->rect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v13, v3

    iget-object v3, v0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->rect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v14, v3

    iget-object v3, v0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->rect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v15, v3

    iget-object v3, v0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->rect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    const/16 v5, 0x80

    .line 124
    invoke-static {v4, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    const/high16 v5, -0x1000000

    const/4 v6, -0x1

    filled-new-array {v6, v4, v5}, [I

    move-result-object v17

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    sget-object v19, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v12, v2

    move/from16 v16, v3

    move-object/from16 v18, v1

    invoke-direct/range {v12 .. v19}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 126
    iget-object v1, v0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->mBrightPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 128
    new-instance v1, Landroid/graphics/LinearGradient;

    iget-object v2, v0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->rect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v7, v2

    iget-object v2, v0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->rect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v8, v2

    iget-object v2, v0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->rect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v9, v2

    iget-object v2, v0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->rect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v2

    const v12, -0x777778

    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v6, v1

    invoke-direct/range {v6 .. v13}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 130
    iget-object v2, v0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->mColorPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 132
    iget-object v1, v0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->getColor()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->toneLock(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 133
    iget-object v1, v0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->prevPaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->prevColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->postInvalidate()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected updateRect()V
    .locals 7

    .line 31
    iget v0, p0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->w:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    .line 32
    iget v2, p0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->h:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    .line 33
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    mul-float/2addr v3, v1

    .line 35
    iget-object v1, p0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->rect:Landroid/graphics/Rect;

    sub-float v4, v0, v3

    float-to-int v4, v4

    sub-float v5, v2, v3

    float-to-int v5, v5

    add-float v6, v0, v3

    float-to-int v6, v6

    add-float/2addr v3, v2

    float-to-int v3, v3

    invoke-virtual {v1, v4, v5, v6, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 37
    iget-object v1, p0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->rect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->rect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->rect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->rect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-static {v1, v3, v4, v5}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v1

    .line 38
    iget-object v3, p0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->touchRect:Landroid/graphics/Rect;

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
    .locals 5

    .line 82
    iget v0, p0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->w:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    .line 83
    iget v2, p0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->h:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    .line 85
    new-instance v3, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v3, p1, p2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 87
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    const/high16 p2, 0x42340000    # 45.0f

    .line 88
    invoke-virtual {p1, p2, v0, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 90
    invoke-virtual {v3, p1}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 92
    iget p2, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v4, p0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->rect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    cmpg-float p2, p2, v4

    if-gez p2, :cond_0

    iget-object p2, p0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->rect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    iput p2, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 93
    :cond_0
    iget p2, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget-object v4, p0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->rect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    cmpg-float p2, p2, v4

    if-gez p2, :cond_1

    iget-object p2, p0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->rect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    iput p2, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 94
    :cond_1
    iget p2, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v4, p0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->rect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    cmpl-float p2, p2, v4

    if-lez p2, :cond_2

    iget-object p2, p0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->rect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->right:I

    int-to-float p2, p2

    iput p2, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 95
    :cond_2
    iget p2, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget-object v4, p0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->rect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    cmpl-float p2, p2, v4

    if-lez p2, :cond_3

    iget-object p2, p0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->rect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float p2, p2

    iput p2, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    :cond_3
    const/high16 p2, -0x3dcc0000    # -45.0f

    .line 97
    invoke-virtual {p1, p2, v0, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 98
    invoke-virtual {v3, p1}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 100
    iget p1, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 101
    iget p2, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 103
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->hsl:[F

    iget-object v2, p0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->touchRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float/2addr p2, v2

    iget-object v2, p0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->touchRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p2, v2

    const/4 v2, 0x2

    aput p2, v0, v2

    .line 104
    iget-object p2, p0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->hsl:[F

    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->hsl:[F

    aget v0, v0, v2

    invoke-static {v0}, Lcom/brakefield/infinitestudio/color/ColorUtils;->clamp(F)F

    move-result v0

    aput v0, p2, v2

    .line 105
    iget-object p2, p0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->hsl:[F

    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->hsl:[F

    aget v0, v0, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v0, v3, v0

    aput v0, p2, v2

    .line 107
    iget-object p2, p0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->hsl:[F

    aget p2, p2, v2

    sub-float/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p2, v0

    sub-float/2addr v3, p2

    iget-object p2, p0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->touchRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr v3, p2

    const/4 p2, 0x0

    cmpl-float p2, v3, p2

    const/4 v0, 0x1

    if-lez p2, :cond_4

    .line 109
    iget-object p2, p0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->hsl:[F

    iget-object v2, p0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->touchRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr p1, v2

    div-float/2addr p1, v3

    add-float/2addr p1, v1

    aput p1, p2, v0

    goto :goto_0

    .line 110
    :cond_4
    iget-object p1, p0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->hsl:[F

    aput v1, p1, v0

    .line 112
    :goto_0
    iget-object p1, p0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->hsl:[F

    iget-object p2, p0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->hsl:[F

    aget p2, p2, v0

    invoke-static {p2}, Lcom/brakefield/infinitestudio/color/ColorUtils;->clamp(F)F

    move-result p2

    aput p2, p1, v0

    .line 114
    iget-object p1, p0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->hsl:[F

    invoke-static {p1}, Lcom/brakefield/infinitestudio/color/HSLColor;->toRGB([F)I

    move-result p1

    iget-object p2, p0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->hsv:[F

    invoke-static {p1, p2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 115
    iget-object p1, p0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->hsv:[F

    iget-object p2, p0, Lcom/brakefield/infinitestudio/color/HSBCircleDiamond;->hsl:[F

    const/4 v0, 0x0

    aget p2, p2, v0

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float/2addr p2, v1

    aput p2, p1, v0

    return-void
.end method

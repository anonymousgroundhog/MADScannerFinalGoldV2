.class public Lcom/brakefield/infinitestudio/color/HSBCircleTriangle;
.super Lcom/brakefield/infinitestudio/color/HSBCircleShape;
.source "HSBCircleTriangle.java"


# instance fields
.field private mBlackPaint:Landroid/graphics/Paint;

.field private mWhitePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/color/HSBCircleShape;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected drawInnerShape(Landroid/graphics/Canvas;)V
    .locals 11

    .line 51
    iget v0, p0, Lcom/brakefield/infinitestudio/color/HSBCircleTriangle;->w:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    .line 52
    iget v2, p0, Lcom/brakefield/infinitestudio/color/HSBCircleTriangle;->h:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    .line 54
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const v3, 0x40333333    # 2.8f

    div-float/2addr v1, v3

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    int-to-float v1, v1

    const-wide/16 v3, 0x0

    .line 57
    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    double-to-float v3, v3

    const-wide/high16 v4, 0x405e000000000000L    # 120.0

    .line 58
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    double-to-float v4, v4

    const-wide/high16 v5, 0x406e000000000000L    # 240.0

    .line 59
    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    double-to-float v5, v5

    .line 61
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    float-to-double v7, v3

    .line 62
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    double-to-float v3, v9

    mul-float/2addr v3, v1

    add-float/2addr v3, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float/2addr v7, v1

    add-float/2addr v7, v2

    invoke-virtual {v6, v3, v7}, Landroid/graphics/Path;->moveTo(FF)V

    float-to-double v3, v4

    .line 63
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float/2addr v7, v1

    add-float/2addr v7, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v3, v1

    add-float/2addr v3, v2

    invoke-virtual {v6, v7, v3}, Landroid/graphics/Path;->lineTo(FF)V

    float-to-double v3, v5

    .line 64
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v5, v7

    mul-float/2addr v5, v1

    add-float/2addr v0, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v1, v3

    add-float/2addr v2, v1

    invoke-virtual {v6, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 65
    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    .line 67
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/HSBCircleTriangle;->mColorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 68
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/HSBCircleTriangle;->mWhitePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 69
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/HSBCircleTriangle;->mBlackPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected getDrawableId()I
    .locals 1

    .line 36
    sget v0, Lcom/brakefield/infinitestudio/R$drawable;->color_wheel_triangle:I

    return v0
.end method

.method public init()V
    .locals 3

    .line 25
    invoke-super {p0}, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->init()V

    .line 27
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/color/HSBCircleTriangle;->mWhitePaint:Landroid/graphics/Paint;

    .line 28
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 30
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/color/HSBCircleTriangle;->mBlackPaint:Landroid/graphics/Paint;

    .line 31
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method protected updateControlFromSaturationBrightness()V
    .locals 11

    .line 75
    iget v0, p0, Lcom/brakefield/infinitestudio/color/HSBCircleTriangle;->w:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    .line 76
    iget v2, p0, Lcom/brakefield/infinitestudio/color/HSBCircleTriangle;->h:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    .line 78
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const v4, 0x40333333    # 2.8f

    div-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    const-wide/16 v4, 0x0

    .line 81
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    double-to-float v4, v4

    const-wide/high16 v5, 0x405e000000000000L    # 120.0

    .line 82
    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    double-to-float v5, v5

    const-wide/high16 v6, 0x406e000000000000L    # 240.0

    .line 83
    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    double-to-float v6, v6

    float-to-double v7, v5

    .line 85
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    double-to-float v5, v9

    mul-float/2addr v5, v3

    add-float/2addr v0, v5

    float-to-double v4, v4

    .line 86
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-double v5, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    double-to-float v9, v9

    mul-float/2addr v9, v3

    sub-float/2addr v4, v9

    .line 87
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float/2addr v7, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float/2addr v3, v5

    sub-float/2addr v7, v3

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 91
    iget-object v5, p0, Lcom/brakefield/infinitestudio/color/HSBCircleTriangle;->hsv:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v5, v7, v5

    mul-float/2addr v5, v3

    mul-float/2addr v1, v5

    sub-float/2addr v2, v1

    .line 94
    iget-object v1, p0, Lcom/brakefield/infinitestudio/color/HSBCircleTriangle;->innerControl:Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v8, p0, Lcom/brakefield/infinitestudio/color/HSBCircleTriangle;->hsv:[F

    aget v6, v8, v6

    mul-float/2addr v4, v6

    add-float/2addr v0, v4

    iput v0, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 95
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/HSBCircleTriangle;->innerControl:Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/color/HSBCircleTriangle;->hsv:[F

    const/4 v4, 0x2

    aget v1, v1, v4

    sub-float/2addr v7, v1

    mul-float/2addr v3, v7

    add-float/2addr v3, v2

    iput v3, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 97
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/HSBCircleTriangle;->innerControl:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/HSBCircleTriangle;->innerControl:Lcom/brakefield/infinitestudio/geometry/Point;

    iput v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/HSBCircleTriangle;->innerControl:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    add-float/2addr v2, v5

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/HSBCircleTriangle;->innerControl:Lcom/brakefield/infinitestudio/geometry/Point;

    iput v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    :cond_1
    return-void
.end method

.method protected updatePaints()V
    .locals 18

    move-object/from16 v0, p0

    .line 141
    iget v1, v0, Lcom/brakefield/infinitestudio/color/HSBCircleTriangle;->w:I

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    .line 142
    iget v3, v0, Lcom/brakefield/infinitestudio/color/HSBCircleTriangle;->h:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    .line 144
    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const v4, 0x40333333    # 2.8f

    div-float/2addr v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v2, v4

    const/4 v5, 0x3

    new-array v5, v5, [F

    .line 148
    iget-object v6, v0, Lcom/brakefield/infinitestudio/color/HSBCircleTriangle;->hsv:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v5, v7

    const/4 v6, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v5, v6

    const/4 v6, 0x2

    aput v8, v5, v6

    .line 151
    invoke-static {v5}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v5

    .line 153
    new-instance v15, Landroid/graphics/LinearGradient;

    const-wide/high16 v8, -0x3fb2000000000000L    # -60.0

    .line 154
    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    double-to-float v10, v10

    mul-float/2addr v10, v2

    add-float/2addr v10, v1

    div-float v4, v2, v4

    .line 155
    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float/2addr v8, v4

    add-float v11, v3, v8

    const-wide/high16 v8, 0x405e000000000000L    # 120.0

    .line 156
    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    double-to-float v12, v12

    mul-float/2addr v12, v4

    add-float/2addr v12, v1

    .line 157
    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float/2addr v8, v2

    add-float v13, v3, v8

    const/high16 v8, -0x1000000

    filled-new-array {v7, v8}, [I

    move-result-object v14

    new-array v9, v6, [F

    fill-array-data v9, :array_0

    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v8, v15

    move-object/from16 v17, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v13

    move-object v13, v14

    move-object/from16 v14, v17

    move-object v6, v15

    move-object/from16 v15, v16

    invoke-direct/range {v8 .. v15}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 160
    iget-object v8, v0, Lcom/brakefield/infinitestudio/color/HSBCircleTriangle;->mBlackPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 162
    new-instance v6, Landroid/graphics/LinearGradient;

    const-wide/high16 v8, 0x404e000000000000L    # 60.0

    .line 163
    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    double-to-float v10, v10

    mul-float/2addr v10, v2

    add-float/2addr v10, v1

    .line 164
    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float/2addr v8, v4

    add-float v11, v3, v8

    const-wide/high16 v8, -0x3fa2000000000000L    # -120.0

    .line 165
    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    double-to-float v12, v12

    mul-float/2addr v12, v4

    add-float/2addr v12, v1

    .line 166
    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float/2addr v8, v2

    add-float v13, v3, v8

    const/4 v8, -0x1

    filled-new-array {v7, v8}, [I

    move-result-object v14

    const/4 v7, 0x2

    new-array v15, v7, [F

    fill-array-data v15, :array_1

    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v9, v6

    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 169
    iget-object v7, v0, Lcom/brakefield/infinitestudio/color/HSBCircleTriangle;->mWhitePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 171
    new-instance v6, Landroid/graphics/LinearGradient;

    const-wide v7, 0x4066800000000000L    # 180.0

    .line 172
    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    double-to-float v9, v9

    mul-float/2addr v9, v2

    add-float/2addr v9, v1

    .line 173
    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float/2addr v7, v4

    add-float v10, v3, v7

    const-wide/16 v7, 0x0

    .line 174
    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    double-to-float v11, v11

    mul-float/2addr v4, v11

    add-float v11, v1, v4

    .line 175
    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v1, v7

    mul-float/2addr v2, v1

    add-float v12, v3, v2

    const v1, -0x777778

    filled-new-array {v1, v5}, [I

    move-result-object v13

    const/4 v1, 0x2

    new-array v14, v1, [F

    fill-array-data v14, :array_2

    sget-object v15, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v8, v6

    invoke-direct/range {v8 .. v15}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 177
    iget-object v1, v0, Lcom/brakefield/infinitestudio/color/HSBCircleTriangle;->mColorPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 179
    iget-object v1, v0, Lcom/brakefield/infinitestudio/color/HSBCircleTriangle;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/color/HSBCircleTriangle;->getColor()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/brakefield/infinitestudio/color/HSBCircleTriangle;->toneLock(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 181
    iget-object v1, v0, Lcom/brakefield/infinitestudio/color/HSBCircleTriangle;->prevPaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/brakefield/infinitestudio/color/HSBCircleTriangle;->prevColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected updateRect()V
    .locals 6

    .line 41
    iget v0, p0, Lcom/brakefield/infinitestudio/color/HSBCircleTriangle;->w:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    .line 42
    iget v2, p0, Lcom/brakefield/infinitestudio/color/HSBCircleTriangle;->h:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    .line 43
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const v3, 0x40333333    # 2.8f

    div-float/2addr v1, v3

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v1, v3

    .line 45
    iget-object v3, p0, Lcom/brakefield/infinitestudio/color/HSBCircleTriangle;->rect:Landroid/graphics/Rect;

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
    .locals 11

    .line 104
    iget v0, p0, Lcom/brakefield/infinitestudio/color/HSBCircleTriangle;->w:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    .line 105
    iget v2, p0, Lcom/brakefield/infinitestudio/color/HSBCircleTriangle;->h:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    .line 107
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const v4, 0x40333333    # 2.8f

    div-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    const-wide/16 v4, 0x0

    .line 110
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    double-to-float v4, v4

    const-wide/high16 v5, 0x405e000000000000L    # 120.0

    .line 111
    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    double-to-float v5, v5

    const-wide/high16 v6, 0x406e000000000000L    # 240.0

    .line 112
    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    double-to-float v6, v6

    float-to-double v7, v5

    .line 114
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    double-to-float v5, v9

    mul-float/2addr v5, v3

    add-float/2addr v0, v5

    float-to-double v4, v4

    .line 115
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-double v5, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    double-to-float v9, v9

    mul-float/2addr v9, v3

    sub-float/2addr v4, v9

    .line 116
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float/2addr v7, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float/2addr v3, v5

    sub-float/2addr v7, v3

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v5, p1, v0

    if-gez v5, :cond_0

    move p1, v0

    :cond_0
    add-float v5, v0, v4

    cmpl-float v6, p1, v5

    if-lez v6, :cond_1

    move p1, v5

    .line 122
    :cond_1
    iget-object v5, p0, Lcom/brakefield/infinitestudio/color/HSBCircleTriangle;->hsv:[F

    sub-float/2addr p1, v0

    div-float/2addr p1, v4

    const/4 v0, 0x1

    aput p1, v5, v0

    .line 123
    iget-object p1, p0, Lcom/brakefield/infinitestudio/color/HSBCircleTriangle;->hsv:[F

    iget-object v4, p0, Lcom/brakefield/infinitestudio/color/HSBCircleTriangle;->hsv:[F

    aget v4, v4, v0

    invoke-static {v4}, Lcom/brakefield/infinitestudio/color/ColorUtils;->clamp(F)F

    move-result v4

    aput v4, p1, v0

    .line 126
    iget-object p1, p0, Lcom/brakefield/infinitestudio/color/HSBCircleTriangle;->hsv:[F

    aget p1, p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p1, v0, p1

    mul-float/2addr p1, v3

    mul-float/2addr v1, p1

    sub-float/2addr v2, v1

    cmpg-float v1, p2, v2

    if-gez v1, :cond_2

    move p2, v2

    :cond_2
    add-float/2addr p1, v2

    cmpl-float v1, p2, p1

    if-lez v1, :cond_3

    move p2, p1

    .line 132
    :cond_3
    iget-object p1, p0, Lcom/brakefield/infinitestudio/color/HSBCircleTriangle;->hsv:[F

    sub-float/2addr p2, v2

    div-float/2addr p2, v3

    const/4 v1, 0x2

    aput p2, p1, v1

    .line 134
    iget-object p1, p0, Lcom/brakefield/infinitestudio/color/HSBCircleTriangle;->hsv:[F

    iget-object p2, p0, Lcom/brakefield/infinitestudio/color/HSBCircleTriangle;->hsv:[F

    aget p2, p2, v1

    invoke-static {p2}, Lcom/brakefield/infinitestudio/color/ColorUtils;->clamp(F)F

    move-result p2

    aput p2, p1, v1

    .line 135
    iget-object p1, p0, Lcom/brakefield/infinitestudio/color/HSBCircleTriangle;->hsv:[F

    iget-object p2, p0, Lcom/brakefield/infinitestudio/color/HSBCircleTriangle;->hsv:[F

    aget p2, p2, v1

    sub-float/2addr v0, p2

    aput v0, p1, v1

    return-void
.end method

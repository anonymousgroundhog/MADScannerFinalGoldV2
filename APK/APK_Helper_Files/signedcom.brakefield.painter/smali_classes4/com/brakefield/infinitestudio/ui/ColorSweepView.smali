.class public Lcom/brakefield/infinitestudio/ui/ColorSweepView;
.super Lcom/brakefield/infinitestudio/ui/SweepView;
.source "ColorSweepView.java"


# instance fields
.field changingOpacity:Z

.field private colors:[I

.field newPaint:Landroid/graphics/Paint;

.field private opacityColors:[I

.field opacityWheel:Landroid/graphics/Paint;

.field paint:Landroid/graphics/Paint;

.field private periods:[F

.field private prevColor:I

.field shadeWheel:Landroid/graphics/Paint;

.field stroke:Landroid/graphics/Paint;

.field whitePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/brakefield/infinitestudio/ui/SweepView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->paint:Landroid/graphics/Paint;

    .line 18
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->whitePaint:Landroid/graphics/Paint;

    .line 19
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->newPaint:Landroid/graphics/Paint;

    .line 20
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->stroke:Landroid/graphics/Paint;

    .line 21
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->shadeWheel:Landroid/graphics/Paint;

    .line 22
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->opacityWheel:Landroid/graphics/Paint;

    const/4 p1, 0x3

    new-array p2, p1, [I

    .line 24
    iput-object p2, p0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->colors:[I

    const/4 p2, 0x2

    new-array p2, p2, [I

    .line 25
    iput-object p2, p0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->opacityColors:[I

    new-array p1, p1, [F

    .line 26
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->periods:[F

    const/4 p1, 0x0

    .line 29
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->changingOpacity:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3e000000    # 0.125f
        0x3e800000    # 0.25f
    .end array-data
.end method

.method private updateShadeWheel(I)V
    .locals 9

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 125
    invoke-static {p1, v0}, Lcom/brakefield/infinitestudio/color/HSLColor;->fromRGB(I[F)[F

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 129
    invoke-static {v0}, Lcom/brakefield/infinitestudio/color/HSLColor;->toRGB([F)I

    move-result v0

    .line 131
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    .line 132
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    .line 133
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    .line 135
    iget-object v4, p0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->colors:[I

    const/16 v5, 0xff

    invoke-static {v5, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    const/4 v7, 0x0

    aput v6, v4, v7

    .line 136
    iget-object v4, p0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->colors:[I

    invoke-static {v5, v1, v3, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    const/4 v1, 0x1

    aput v0, v4, v1

    .line 137
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->colors:[I

    invoke-static {v5, v7, v7, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    aput v3, v0, v2

    .line 139
    new-instance v0, Landroid/graphics/SweepGradient;

    iget v3, p0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->center:I

    int-to-float v3, v3

    iget v4, p0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->h:I

    iget v6, p0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->center:I

    sub-int/2addr v4, v6

    int-to-float v4, v4

    iget-object v6, p0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->colors:[I

    iget-object v8, p0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->periods:[F

    invoke-direct {v0, v3, v4, v6, v8}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 140
    iget-object v3, p0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->shadeWheel:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 142
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->opacityColors:[I

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    invoke-static {v5, v3, v4, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    aput v3, v0, v7

    .line 143
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->opacityColors:[I

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-static {v7, v3, v4, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    aput p1, v0, v1

    .line 145
    new-instance p1, Landroid/graphics/SweepGradient;

    iget v0, p0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->center:I

    int-to-float v0, v0

    iget v1, p0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->h:I

    iget v3, p0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->center:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget-object v3, p0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->opacityColors:[I

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-direct {p1, v0, v1, v3, v2}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 146
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->opacityWheel:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3e800000    # 0.25f
    .end array-data
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 68
    iget-object v1, v0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->paint:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->init()V

    .line 70
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->w:I

    .line 71
    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->h:I

    .line 73
    iget v1, v0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->w:I

    div-int/lit8 v1, v1, 0xa

    iput v1, v0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->center:I

    .line 75
    iget v1, v0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->w:I

    iget v2, v0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->w:I

    div-int/lit8 v2, v2, 0x5

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x5

    .line 77
    iget-object v2, v0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->oval:Landroid/graphics/RectF;

    iget v3, v0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->center:I

    sub-int/2addr v3, v1

    int-to-float v3, v3

    iget v4, v0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->h:I

    iget v5, v0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->center:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v1

    int-to-float v4, v4

    iget v5, v0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->center:I

    add-int/2addr v5, v1

    int-to-float v5, v5

    iget v6, v0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->h:I

    iget v8, v0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->center:I

    sub-int/2addr v6, v8

    add-int/2addr v6, v1

    int-to-float v1, v6

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 79
    iget v1, v0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->prevColor:I

    invoke-direct {v0, v1}, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->updateShadeWheel(I)V

    .line 81
    iget-object v1, v0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->newPaint:Landroid/graphics/Paint;

    sget v2, Lcom/brakefield/infinitestudio/color/PaintManager;->color:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    iget-object v1, v0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->oval:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v1, v8

    .line 85
    iget-object v2, v0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->shadeWheel:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    div-float/2addr v2, v8

    sub-float v9, v1, v2

    .line 87
    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10}, Landroid/graphics/RectF;-><init>()V

    .line 88
    iget-object v1, v0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->oval:Landroid/graphics/RectF;

    invoke-virtual {v10, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 90
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 91
    iget v1, v0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->w:I

    div-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    iget v2, v0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->h:I

    iget v3, v0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->w:I

    div-int/lit8 v3, v3, 0xa

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x43870000    # 270.0f

    invoke-virtual {v7, v3, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 92
    iget-boolean v1, v0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->changingOpacity:Z

    if-eqz v1, :cond_1

    const/4 v3, 0x0

    const/high16 v4, 0x42b40000    # 90.0f

    const/4 v5, 0x1

    iget-object v6, v0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->opacityWheel:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move-object v2, v10

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    const/high16 v4, 0x42b40000    # 90.0f

    const/4 v5, 0x1

    .line 93
    iget-object v6, v0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->shadeWheel:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move-object v2, v10

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :goto_0
    const/4 v3, 0x0

    const/high16 v4, 0x42b40000    # 90.0f

    const/4 v5, 0x1

    .line 94
    iget-object v6, v0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->stroke:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move-object v2, v10

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 95
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 97
    iget v1, v0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->prevValue:F

    neg-float v1, v1

    float-to-double v1, v1

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v1, v10

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v1, v12

    double-to-float v1, v1

    .line 100
    iget v2, v0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->center:I

    .line 101
    iget v3, v0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->h:I

    iget v4, v0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->center:I

    sub-int/2addr v3, v4

    int-to-double v4, v2

    float-to-double v14, v9

    float-to-double v8, v1

    .line 102
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v16, v16, v14

    add-double v4, v4, v16

    double-to-int v1, v4

    int-to-double v4, v3

    .line 103
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v8, v14

    add-double/2addr v4, v8

    double-to-int v4, v4

    int-to-float v2, v2

    int-to-float v3, v3

    int-to-float v5, v1

    int-to-float v6, v4

    .line 105
    iget-object v8, v0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->stroke:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v4, v5

    move v5, v6

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 107
    iget v1, v0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->value:F

    neg-float v1, v1

    float-to-double v1, v1

    mul-double/2addr v1, v10

    div-double/2addr v1, v12

    double-to-float v1, v1

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_2

    float-to-double v3, v1

    const-wide v5, 0x3ff921fb54442d18L    # 1.5707963267948966

    cmpg-double v3, v3, v5

    if-gtz v3, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    float-to-double v2, v1

    cmpl-double v4, v2, v10

    if-ltz v4, :cond_3

    const-wide v4, 0x4012d97c7f3321d2L    # 4.71238898038469

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_3

    const v1, 0x4096cbe4

    .line 112
    :cond_3
    :goto_1
    iget v2, v0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->center:I

    .line 113
    iget v3, v0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->h:I

    iget v4, v0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->center:I

    sub-int/2addr v3, v4

    int-to-double v4, v2

    float-to-double v8, v1

    .line 114
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v10, v14

    add-double/2addr v4, v10

    double-to-int v1, v4

    int-to-double v4, v3

    .line 115
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v14, v8

    add-double/2addr v4, v14

    double-to-int v4, v4

    int-to-float v2, v2

    int-to-float v3, v3

    int-to-float v8, v1

    int-to-float v9, v4

    .line 117
    iget-object v6, v0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->stroke:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v4, v8

    move v5, v9

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 119
    iget v1, v0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->buttonSize:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-object v3, v0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->newPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v9, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 120
    iget v1, v0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->buttonSize:F

    div-float/2addr v1, v2

    iget-object v2, v0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->stroke:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v9, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public init()V
    .locals 5

    .line 37
    invoke-super {p0}, Lcom/brakefield/infinitestudio/ui/SweepView;->init()V

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->paint:Landroid/graphics/Paint;

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->whitePaint:Landroid/graphics/Paint;

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->newPaint:Landroid/graphics/Paint;

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->stroke:Landroid/graphics/Paint;

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->shadeWheel:Landroid/graphics/Paint;

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->opacityWheel:Landroid/graphics/Paint;

    .line 46
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->whitePaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 50
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->newPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 52
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->stroke:Landroid/graphics/Paint;

    const v2, -0x333334

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->stroke:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 54
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->stroke:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 55
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->stroke:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 56
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->stroke:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 57
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->stroke:Landroid/graphics/Paint;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 58
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->stroke:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, -0xbbbbbc

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v0, v4, v2, v2, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->shadeWheel:Landroid/graphics/Paint;

    .line 62
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->opacityWheel:Landroid/graphics/Paint;

    .line 63
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method public setChangingOpacity(Z)V
    .locals 0

    .line 156
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->changingOpacity:Z

    .line 157
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->postInvalidate()V

    return-void
.end method

.method public setPreviousValue(F)V
    .locals 1

    .line 151
    sget v0, Lcom/brakefield/infinitestudio/color/PaintManager;->color:I

    invoke-static {v0}, Lcom/brakefield/infinitestudio/color/PaintManager;->getOpaqueColor(I)I

    move-result v0

    iput v0, p0, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->prevColor:I

    .line 152
    invoke-super {p0, p1}, Lcom/brakefield/infinitestudio/ui/SweepView;->setPreviousValue(F)V

    return-void
.end method

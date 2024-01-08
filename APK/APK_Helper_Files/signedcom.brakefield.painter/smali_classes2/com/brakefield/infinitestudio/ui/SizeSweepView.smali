.class public Lcom/brakefield/infinitestudio/ui/SizeSweepView;
.super Lcom/brakefield/infinitestudio/ui/SweepView;
.source "SizeSweepView.java"


# instance fields
.field backPaint:Landroid/graphics/Paint;

.field paint:Landroid/graphics/Paint;

.field stroke:Landroid/graphics/Paint;

.field sweepPaint:Landroid/graphics/Paint;

.field whitePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/brakefield/infinitestudio/ui/SweepView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/SizeSweepView;->paint:Landroid/graphics/Paint;

    .line 13
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/SizeSweepView;->whitePaint:Landroid/graphics/Paint;

    .line 14
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/SizeSweepView;->backPaint:Landroid/graphics/Paint;

    .line 15
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/SizeSweepView;->sweepPaint:Landroid/graphics/Paint;

    .line 16
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/SizeSweepView;->stroke:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 56
    iget-object v1, v0, Lcom/brakefield/infinitestudio/ui/SizeSweepView;->paint:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/ui/SizeSweepView;->init()V

    .line 58
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/ui/SizeSweepView;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/brakefield/infinitestudio/ui/SizeSweepView;->w:I

    .line 59
    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/ui/SizeSweepView;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/brakefield/infinitestudio/ui/SizeSweepView;->h:I

    .line 61
    iget v1, v0, Lcom/brakefield/infinitestudio/ui/SizeSweepView;->w:I

    div-int/lit8 v1, v1, 0xa

    iput v1, v0, Lcom/brakefield/infinitestudio/ui/SizeSweepView;->center:I

    .line 62
    iget v1, v0, Lcom/brakefield/infinitestudio/ui/SizeSweepView;->w:I

    iget v2, v0, Lcom/brakefield/infinitestudio/ui/SizeSweepView;->w:I

    div-int/lit8 v2, v2, 0x5

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x5

    .line 64
    iget-object v2, v0, Lcom/brakefield/infinitestudio/ui/SizeSweepView;->oval:Landroid/graphics/RectF;

    iget v3, v0, Lcom/brakefield/infinitestudio/ui/SizeSweepView;->center:I

    sub-int/2addr v3, v1

    int-to-float v3, v3

    iget v4, v0, Lcom/brakefield/infinitestudio/ui/SizeSweepView;->h:I

    iget v5, v0, Lcom/brakefield/infinitestudio/ui/SizeSweepView;->center:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v1

    int-to-float v4, v4

    iget v5, v0, Lcom/brakefield/infinitestudio/ui/SizeSweepView;->center:I

    add-int/2addr v5, v1

    int-to-float v5, v5

    iget v6, v0, Lcom/brakefield/infinitestudio/ui/SizeSweepView;->h:I

    iget v8, v0, Lcom/brakefield/infinitestudio/ui/SizeSweepView;->center:I

    sub-int/2addr v6, v8

    add-int/2addr v6, v1

    int-to-float v1, v6

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 66
    iget-object v1, v0, Lcom/brakefield/infinitestudio/ui/SizeSweepView;->oval:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v1, v8

    .line 68
    iget-object v2, v0, Lcom/brakefield/infinitestudio/ui/SizeSweepView;->sweepPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    div-float/2addr v2, v8

    sub-float v9, v1, v2

    .line 70
    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10}, Landroid/graphics/RectF;-><init>()V

    .line 71
    iget-object v1, v0, Lcom/brakefield/infinitestudio/ui/SizeSweepView;->oval:Landroid/graphics/RectF;

    invoke-virtual {v10, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 72
    iget-object v1, v0, Lcom/brakefield/infinitestudio/ui/SizeSweepView;->sweepPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    div-float/2addr v1, v8

    iget-object v2, v0, Lcom/brakefield/infinitestudio/ui/SizeSweepView;->sweepPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    div-float/2addr v2, v8

    invoke-virtual {v10, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 74
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 75
    iget v1, v0, Lcom/brakefield/infinitestudio/ui/SizeSweepView;->w:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    invoke-virtual {v7, v2, v3, v1, v11}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 76
    iget v1, v0, Lcom/brakefield/infinitestudio/ui/SizeSweepView;->w:I

    div-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    iget v2, v0, Lcom/brakefield/infinitestudio/ui/SizeSweepView;->h:I

    iget v3, v0, Lcom/brakefield/infinitestudio/ui/SizeSweepView;->w:I

    div-int/lit8 v3, v3, 0xa

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x43870000    # 270.0f

    invoke-virtual {v7, v3, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    const/4 v3, 0x0

    const/high16 v4, 0x42b40000    # 90.0f

    const/4 v5, 0x1

    .line 77
    iget-object v6, v0, Lcom/brakefield/infinitestudio/ui/SizeSweepView;->backPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move-object v2, v10

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 78
    iget-object v6, v0, Lcom/brakefield/infinitestudio/ui/SizeSweepView;->stroke:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 79
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 81
    iget v1, v0, Lcom/brakefield/infinitestudio/ui/SizeSweepView;->prevValue:F

    float-to-double v1, v1

    const-wide v12, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v1, v12

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double/2addr v1, v14

    add-double/2addr v1, v12

    double-to-float v1, v1

    .line 84
    iget v2, v0, Lcom/brakefield/infinitestudio/ui/SizeSweepView;->w:I

    iget v3, v0, Lcom/brakefield/infinitestudio/ui/SizeSweepView;->center:I

    sub-int/2addr v2, v3

    .line 85
    iget v3, v0, Lcom/brakefield/infinitestudio/ui/SizeSweepView;->h:I

    iget v4, v0, Lcom/brakefield/infinitestudio/ui/SizeSweepView;->center:I

    sub-int/2addr v3, v4

    int-to-double v4, v2

    float-to-double v9, v9

    float-to-double v14, v1

    .line 86
    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v16, v16, v9

    add-double v4, v4, v16

    double-to-int v1, v4

    int-to-double v4, v3

    .line 87
    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v14, v9

    add-double/2addr v4, v14

    double-to-int v4, v4

    int-to-float v2, v2

    int-to-float v3, v3

    int-to-float v5, v1

    int-to-float v6, v4

    .line 89
    iget-object v14, v0, Lcom/brakefield/infinitestudio/ui/SizeSweepView;->stroke:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v4, v5

    move v5, v6

    move-object v6, v14

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 91
    iget v1, v0, Lcom/brakefield/infinitestudio/ui/SizeSweepView;->value:F

    float-to-double v1, v1

    mul-double/2addr v1, v12

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double/2addr v1, v3

    add-double/2addr v1, v12

    double-to-float v1, v1

    float-to-double v2, v1

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    cmpg-double v4, v2, v4

    if-gtz v4, :cond_1

    const-wide v4, 0x4012d97c7f3321d2L    # 4.71238898038469

    cmpl-double v4, v2, v4

    if-ltz v4, :cond_1

    const v1, 0x4096cbe4

    goto :goto_0

    :cond_1
    cmpg-double v2, v2, v12

    if-gtz v2, :cond_2

    cmpl-float v2, v1, v11

    if-ltz v2, :cond_2

    const v1, 0x40490fdb    # (float)Math.PI

    .line 96
    :cond_2
    :goto_0
    iget v2, v0, Lcom/brakefield/infinitestudio/ui/SizeSweepView;->w:I

    iget v3, v0, Lcom/brakefield/infinitestudio/ui/SizeSweepView;->center:I

    sub-int/2addr v2, v3

    .line 97
    iget v3, v0, Lcom/brakefield/infinitestudio/ui/SizeSweepView;->h:I

    iget v4, v0, Lcom/brakefield/infinitestudio/ui/SizeSweepView;->center:I

    sub-int/2addr v3, v4

    int-to-double v4, v2

    float-to-double v11, v1

    .line 98
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double/2addr v13, v9

    add-double/2addr v4, v13

    double-to-int v1, v4

    int-to-double v4, v3

    .line 99
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    mul-double/2addr v9, v11

    add-double/2addr v4, v9

    double-to-int v4, v4

    int-to-float v2, v2

    int-to-float v3, v3

    int-to-float v9, v1

    int-to-float v10, v4

    .line 101
    iget-object v6, v0, Lcom/brakefield/infinitestudio/ui/SizeSweepView;->stroke:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v4, v9

    move v5, v10

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 103
    iget v1, v0, Lcom/brakefield/infinitestudio/ui/SizeSweepView;->buttonSize:F

    div-float/2addr v1, v8

    iget-object v2, v0, Lcom/brakefield/infinitestudio/ui/SizeSweepView;->whitePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v9, v10, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 104
    iget v1, v0, Lcom/brakefield/infinitestudio/ui/SizeSweepView;->buttonSize:F

    div-float/2addr v1, v8

    iget v2, v0, Lcom/brakefield/infinitestudio/ui/SizeSweepView;->value:F

    mul-float/2addr v1, v2

    iget-object v2, v0, Lcom/brakefield/infinitestudio/ui/SizeSweepView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v9, v10, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 105
    iget v1, v0, Lcom/brakefield/infinitestudio/ui/SizeSweepView;->buttonSize:F

    div-float/2addr v1, v8

    iget-object v2, v0, Lcom/brakefield/infinitestudio/ui/SizeSweepView;->stroke:Landroid/graphics/Paint;

    invoke-virtual {v7, v9, v10, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public init()V
    .locals 7

    .line 23
    invoke-super {p0}, Lcom/brakefield/infinitestudio/ui/SweepView;->init()V

    .line 25
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/SizeSweepView;->whitePaint:Landroid/graphics/Paint;

    .line 26
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/SizeSweepView;->backPaint:Landroid/graphics/Paint;

    .line 27
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/SizeSweepView;->paint:Landroid/graphics/Paint;

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/SizeSweepView;->sweepPaint:Landroid/graphics/Paint;

    .line 29
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/SizeSweepView;->stroke:Landroid/graphics/Paint;

    .line 31
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/SizeSweepView;->whitePaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 33
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/SizeSweepView;->backPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 34
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/SizeSweepView;->backPaint:Landroid/graphics/Paint;

    const/16 v2, 0xc8

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 36
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/SizeSweepView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 37
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/SizeSweepView;->paint:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 38
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/SizeSweepView;->paint:Landroid/graphics/Paint;

    const v3, -0xbbbbbc

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/SizeSweepView;->sweepPaint:Landroid/graphics/Paint;

    .line 41
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 42
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/SizeSweepView;->sweepPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x42480000    # 50.0f

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 43
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/SizeSweepView;->sweepPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    const/high16 v5, -0x1000000

    const/high16 v6, 0x40400000    # 3.0f

    invoke-virtual {v0, v6, v4, v4, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 45
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/SizeSweepView;->stroke:Landroid/graphics/Paint;

    const v4, -0x333334

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/SizeSweepView;->stroke:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 47
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/SizeSweepView;->stroke:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 48
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/SizeSweepView;->stroke:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 49
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/SizeSweepView;->stroke:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 50
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/SizeSweepView;->stroke:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 51
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/SizeSweepView;->stroke:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v1, v1, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    return-void
.end method

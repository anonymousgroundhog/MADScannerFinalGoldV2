.class public Lcom/brakefield/infinitestudio/color/SVSquare;
.super Lcom/brakefield/infinitestudio/color/ColorPickerView;
.source "SVSquare.java"


# static fields
.field private static final CENTER:I = 0x0

.field private static final HUE:I = 0x1

.field private static final NONE:I = -0x1


# instance fields
.field private in:I

.field private inCenter:Z

.field private mBrightPaint:Landroid/graphics/Paint;

.field private mColorPaint:Landroid/graphics/Paint;

.field private mMarkerPaint:Landroid/graphics/Paint;

.field private mPaint:Landroid/graphics/Paint;

.field private prevPaint:Landroid/graphics/Paint;

.field rect:Landroid/graphics/RectF;

.field private softStrokePaint:Landroid/graphics/Paint;

.field private startX:F

.field private startY:F

.field private strokePaint:Landroid/graphics/Paint;

.field private wheel:Landroid/graphics/drawable/Drawable;

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/color/ColorPickerView;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->rect:Landroid/graphics/RectF;

    const/4 p1, -0x1

    .line 192
    iput p1, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->in:I

    return-void
.end method

.method private getXY()Lcom/brakefield/infinitestudio/geometry/Point;
    .locals 6

    .line 152
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->rect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget-object v3, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->hsv:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->rect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->rect:Landroid/graphics/RectF;

    .line 153
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget-object v4, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->hsv:[F

    const/4 v5, 0x2

    aget v4, v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v4

    mul-float/2addr v3, v5

    add-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 155
    iget v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v2, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->rect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->rect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iput v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 157
    :cond_0
    iget v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget-object v2, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->rect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 158
    iget-object v1, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->rect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iput v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 159
    :cond_1
    iget v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v2, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->rect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->rect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    add-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 160
    iget-object v1, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->rect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    add-float/2addr v1, v2

    iput v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 161
    :cond_2
    iget v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget-object v2, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->rect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->rect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    add-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 162
    iget-object v1, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->rect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    add-float/2addr v1, v2

    iput v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    :cond_3
    return-object v0
.end method


# virtual methods
.method public init()V
    .locals 4

    .line 41
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/SVSquare;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/brakefield/infinitestudio/R$drawable;->color_wheel_square:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->wheel:Landroid/graphics/drawable/Drawable;

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->mBrightPaint:Landroid/graphics/Paint;

    .line 44
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 46
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->mColorPaint:Landroid/graphics/Paint;

    .line 47
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->mMarkerPaint:Landroid/graphics/Paint;

    .line 50
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 51
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->mMarkerPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->mMarkerPaint:Landroid/graphics/Paint;

    const/16 v3, 0x64

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->mPaint:Landroid/graphics/Paint;

    .line 55
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->prevPaint:Landroid/graphics/Paint;

    .line 58
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 59
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->prevPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 61
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->strokePaint:Landroid/graphics/Paint;

    .line 62
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->strokePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 64
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->strokePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 65
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->strokePaint:Landroid/graphics/Paint;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 67
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->softStrokePaint:Landroid/graphics/Paint;

    .line 68
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->softStrokePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 70
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->softStrokePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 71
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->softStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 72
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->softStrokePaint:Landroid/graphics/Paint;

    const/16 v2, 0x3c

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 74
    invoke-virtual {p0, v1}, Lcom/brakefield/infinitestudio/color/SVSquare;->setFocusable(Z)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v7, p1

    .line 80
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/SVSquare;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/brakefield/infinitestudio/color/SVSquare;->w:I

    .line 81
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/SVSquare;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/brakefield/infinitestudio/color/SVSquare;->h:I

    .line 83
    iget v1, v0, Lcom/brakefield/infinitestudio/color/SVSquare;->w:I

    div-int/lit8 v1, v1, 0x2

    .line 84
    iget v2, v0, Lcom/brakefield/infinitestudio/color/SVSquare;->h:I

    div-int/lit8 v2, v2, 0x2

    .line 86
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    mul-int/lit8 v4, v3, 0x2

    int-to-float v8, v4

    const/high16 v4, 0x41500000    # 13.0f

    mul-float/2addr v4, v8

    const/high16 v9, 0x438c0000    # 280.0f

    div-float/2addr v4, v9

    float-to-int v4, v4

    const/high16 v5, 0x43680000    # 232.0f

    mul-float/2addr v5, v8

    div-float/2addr v5, v9

    float-to-int v5, v5

    .line 92
    iget-object v6, v0, Lcom/brakefield/infinitestudio/color/SVSquare;->rect:Landroid/graphics/RectF;

    sub-int v10, v1, v3

    add-int v11, v10, v4

    int-to-float v11, v11

    sub-int v12, v2, v3

    add-int v13, v12, v4

    int-to-float v13, v13

    add-int/2addr v1, v3

    sub-int v4, v1, v4

    int-to-float v4, v4

    add-int/2addr v5, v12

    int-to-float v5, v5

    invoke-virtual {v6, v11, v13, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 94
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/color/SVSquare;->getXY()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v11

    .line 95
    iget v13, v11, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 96
    iget v14, v11, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 98
    iget-boolean v4, v0, Lcom/brakefield/infinitestudio/color/SVSquare;->set:Z

    if-nez v4, :cond_1

    .line 99
    iget v4, v0, Lcom/brakefield/infinitestudio/color/SVSquare;->w:I

    if-lez v4, :cond_0

    iget v4, v0, Lcom/brakefield/infinitestudio/color/SVSquare;->h:I

    if-lez v4, :cond_0

    const/4 v4, 0x1

    .line 100
    iput-boolean v4, v0, Lcom/brakefield/infinitestudio/color/SVSquare;->set:Z

    .line 102
    iput v13, v0, Lcom/brakefield/infinitestudio/color/SVSquare;->startX:F

    .line 103
    iput v14, v0, Lcom/brakefield/infinitestudio/color/SVSquare;->startY:F

    .line 105
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/SVSquare;->updatePaints()V

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x64

    .line 108
    invoke-virtual {p0, v1, v2}, Lcom/brakefield/infinitestudio/color/SVSquare;->postInvalidateDelayed(J)V

    return-void

    .line 113
    :cond_1
    :goto_0
    iget-object v4, v0, Lcom/brakefield/infinitestudio/color/SVSquare;->wheel:Landroid/graphics/drawable/Drawable;

    add-int/2addr v2, v3

    invoke-virtual {v4, v10, v12, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 115
    iget-object v1, v0, Lcom/brakefield/infinitestudio/color/SVSquare;->wheel:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 116
    iget-object v1, v0, Lcom/brakefield/infinitestudio/color/SVSquare;->rect:Landroid/graphics/RectF;

    iget-object v2, v0, Lcom/brakefield/infinitestudio/color/SVSquare;->mColorPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 117
    iget-object v1, v0, Lcom/brakefield/infinitestudio/color/SVSquare;->rect:Landroid/graphics/RectF;

    iget-object v2, v0, Lcom/brakefield/infinitestudio/color/SVSquare;->mBrightPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 119
    iget-object v1, v0, Lcom/brakefield/infinitestudio/color/SVSquare;->rect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, v0, Lcom/brakefield/infinitestudio/color/SVSquare;->startY:F

    iget-object v1, v0, Lcom/brakefield/infinitestudio/color/SVSquare;->rect:Landroid/graphics/RectF;

    iget v4, v1, Landroid/graphics/RectF;->right:F

    iget v5, v0, Lcom/brakefield/infinitestudio/color/SVSquare;->startY:F

    iget-object v6, v0, Lcom/brakefield/infinitestudio/color/SVSquare;->softStrokePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 120
    iget v2, v0, Lcom/brakefield/infinitestudio/color/SVSquare;->startX:F

    iget-object v1, v0, Lcom/brakefield/infinitestudio/color/SVSquare;->rect:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->top:F

    iget v4, v0, Lcom/brakefield/infinitestudio/color/SVSquare;->startX:F

    iget-object v1, v0, Lcom/brakefield/infinitestudio/color/SVSquare;->rect:Landroid/graphics/RectF;

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v6, v0, Lcom/brakefield/infinitestudio/color/SVSquare;->softStrokePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 122
    iget-object v1, v0, Lcom/brakefield/infinitestudio/color/SVSquare;->rect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget-object v1, v0, Lcom/brakefield/infinitestudio/color/SVSquare;->rect:Landroid/graphics/RectF;

    iget v4, v1, Landroid/graphics/RectF;->right:F

    iget-object v6, v0, Lcom/brakefield/infinitestudio/color/SVSquare;->strokePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v14

    move v5, v14

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 123
    iget-object v1, v0, Lcom/brakefield/infinitestudio/color/SVSquare;->rect:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->top:F

    iget-object v1, v0, Lcom/brakefield/infinitestudio/color/SVSquare;->rect:Landroid/graphics/RectF;

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v6, v0, Lcom/brakefield/infinitestudio/color/SVSquare;->strokePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v13

    move v4, v13

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 128
    iget-object v1, v0, Lcom/brakefield/infinitestudio/color/SVSquare;->control:Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;

    iget-object v2, v0, Lcom/brakefield/infinitestudio/color/SVSquare;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;->setColor(I)V

    .line 130
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 131
    invoke-virtual {v7, v13, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 132
    iget-object v1, v0, Lcom/brakefield/infinitestudio/color/SVSquare;->control:Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;

    invoke-virtual {v1, v7}, Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 133
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 135
    iget v1, v11, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v2, v11, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v3, v0, Lcom/brakefield/infinitestudio/color/SVSquare;->knobSize:I

    int-to-float v3, v3

    iget-object v4, v0, Lcom/brakefield/infinitestudio/color/SVSquare;->prevPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    const/high16 v5, 0x3fc00000    # 1.5f

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, v0, Lcom/brakefield/infinitestudio/color/SVSquare;->prevPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 137
    iget-object v1, v0, Lcom/brakefield/infinitestudio/color/SVSquare;->rect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, v0, Lcom/brakefield/infinitestudio/color/SVSquare;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget-object v3, v0, Lcom/brakefield/infinitestudio/color/SVSquare;->hsv:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    const/high16 v4, 0x43b40000    # 360.0f

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    const v2, 0x43818000    # 259.0f

    mul-float/2addr v8, v2

    div-float/2addr v8, v9

    .line 140
    iget-object v2, v0, Lcom/brakefield/infinitestudio/color/SVSquare;->control:Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;->setColor(I)V

    .line 142
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 143
    invoke-virtual {v7, v1, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 144
    iget-object v1, v0, Lcom/brakefield/infinitestudio/color/SVSquare;->hueControl:Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;

    invoke-virtual {v1, v7}, Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 145
    iget-object v1, v0, Lcom/brakefield/infinitestudio/color/SVSquare;->toneLockControl:Landroid/graphics/drawable/Drawable;

    sget-boolean v2, Lcom/brakefield/infinitestudio/color/SVSquare;->toneLock:Z

    if-eqz v2, :cond_2

    const/16 v2, 0xff

    goto :goto_1

    :cond_2
    const/16 v2, 0x3c

    :goto_1
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 146
    iget-object v1, v0, Lcom/brakefield/infinitestudio/color/SVSquare;->toneLockControl:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 147
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 200
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/color/SVSquare;->handleMultiTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    .line 201
    iget p1, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->in:I

    if-eq p1, v1, :cond_0

    .line 202
    iget-object p1, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->hsv:[F

    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->downHSV:[F

    aget v0, v0, v3

    aput v0, p1, v3

    .line 203
    iget-object p1, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->hsv:[F

    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->downHSV:[F

    aget v0, v0, v4

    aput v0, p1, v4

    .line 204
    iget-object p1, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->hsv:[F

    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->downHSV:[F

    aget v0, v0, v2

    aput v0, p1, v2

    .line 206
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/SVSquare;->getColor()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/color/SVSquare;->setGamma(I)V

    .line 207
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/SVSquare;->invalidate()V

    .line 209
    iget-object p1, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->listener:Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->listener:Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/SVSquare;->getColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/color/SVSquare;->toneLock(I)I

    move-result v0

    invoke-interface {p1, v0, v4}, Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;->colorChanged(IZ)V

    goto :goto_0

    .line 210
    :cond_0
    iput v1, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->in:I

    :cond_1
    :goto_0
    return v4

    .line 214
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 215
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 217
    iget-object v6, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->rect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    cmpg-float v6, v0, v6

    if-gez v6, :cond_3

    .line 218
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->rect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    .line 219
    :cond_3
    iget-object v6, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->rect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    cmpg-float v6, v5, v6

    if-gez v6, :cond_4

    .line 220
    iget-object v5, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->rect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    .line 221
    :cond_4
    iget-object v6, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->rect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    cmpl-float v6, v0, v6

    if-lez v6, :cond_5

    .line 222
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->rect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    .line 223
    :cond_5
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/SVSquare;->getHeight()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v6, v5, v6

    if-lez v6, :cond_6

    .line 224
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/SVSquare;->getHeight()I

    move-result v5

    int-to-float v5, v5

    .line 226
    :cond_6
    iput v0, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->x:F

    .line 227
    iput v5, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->y:F

    .line 229
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/high16 v6, 0x43b40000    # 360.0f

    if-eqz p1, :cond_9

    if-eq p1, v4, :cond_7

    if-eq p1, v2, :cond_c

    goto/16 :goto_5

    .line 290
    :cond_7
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/SVSquare;->clearFocus()V

    .line 292
    iget p1, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->in:I

    if-ne p1, v4, :cond_8

    iget-boolean p1, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->moving:Z

    if-nez p1, :cond_8

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/SVSquare;->toggleToneLock()V

    .line 294
    :cond_8
    iput-boolean v3, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->inCenter:Z

    .line 295
    iput v1, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->in:I

    .line 296
    iget-object p1, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->listener:Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->listener:Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/SVSquare;->getColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/color/SVSquare;->toneLock(I)I

    move-result v0

    invoke-interface {p1, v0, v4}, Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;->colorChanged(IZ)V

    goto/16 :goto_5

    .line 232
    :cond_9
    iput-boolean v3, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->moving:Z

    .line 234
    iget-object p1, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->rect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float p1, v5, p1

    if-lez p1, :cond_b

    .line 235
    iput v4, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->in:I

    .line 237
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/SVSquare;->getWidth()I

    move-result p1

    .line 238
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/SVSquare;->getHeight()I

    move-result v1

    .line 240
    div-int/2addr p1, v2

    .line 241
    div-int/2addr v1, v2

    .line 243
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 245
    iget-object v1, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->rect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v7, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->rect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    iget-object v8, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->hsv:[F

    aget v8, v8, v3

    div-float/2addr v8, v6

    mul-float/2addr v7, v8

    sub-float/2addr v1, v7

    mul-int/2addr p1, v2

    int-to-float p1, p1

    const v7, 0x43818000    # 259.0f

    mul-float/2addr p1, v7

    const/high16 v7, 0x438c0000    # 280.0f

    div-float/2addr p1, v7

    .line 248
    invoke-static {v1, p1, v0, v5}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result p1

    iget-object v1, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->hueControl:Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    mul-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_a

    move p1, v4

    goto :goto_1

    :cond_a
    move p1, v3

    :goto_1
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->moving:Z

    goto :goto_2

    .line 251
    :cond_b
    iput v3, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->in:I

    .line 253
    :goto_2
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/SVSquare;->requestFocus()Z

    .line 254
    iput v0, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->downX:F

    .line 255
    iput v5, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->downY:F

    .line 257
    iget-object p1, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->downHSV:[F

    iget-object v1, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->hsv:[F

    aget v1, v1, v3

    aput v1, p1, v3

    .line 258
    iget-object p1, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->downHSV:[F

    iget-object v1, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->hsv:[F

    aget v1, v1, v4

    aput v1, p1, v4

    .line 259
    iget-object p1, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->downHSV:[F

    iget-object v1, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->hsv:[F

    aget v1, v1, v2

    aput v1, p1, v2

    .line 263
    :cond_c
    iget-boolean p1, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->moving:Z

    if-nez p1, :cond_e

    .line 264
    iget p1, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->downX:F

    iget v1, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->downY:F

    invoke-static {p1, v1, v0, v5}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result p1

    const/high16 v1, 0x41200000    # 10.0f

    cmpl-float p1, p1, v1

    if-lez p1, :cond_d

    move p1, v4

    goto :goto_3

    :cond_d
    move p1, v3

    :goto_3
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->moving:Z

    .line 266
    :cond_e
    iget p1, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->in:I

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez p1, :cond_f

    .line 268
    iget-object p1, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->hsv:[F

    iget-object v6, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->rect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v6

    iget-object v6, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->rect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    div-float/2addr v0, v6

    aput v0, p1, v4

    .line 269
    iget-object p1, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->hsv:[F

    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->hsv:[F

    aget v0, v0, v4

    invoke-static {v0}, Lcom/brakefield/infinitestudio/color/ColorUtils;->clamp(F)F

    move-result v0

    aput v0, p1, v4

    .line 271
    iget-object p1, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->hsv:[F

    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->rect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v0

    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->rect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v5, v0

    aput v5, p1, v2

    .line 272
    iget-object p1, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->hsv:[F

    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->hsv:[F

    aget v0, v0, v2

    invoke-static {v0}, Lcom/brakefield/infinitestudio/color/ColorUtils;->clamp(F)F

    move-result v0

    aput v0, p1, v2

    .line 273
    iget-object p1, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->hsv:[F

    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->hsv:[F

    aget v0, v0, v2

    sub-float/2addr v1, v0

    aput v1, p1, v2

    .line 275
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/SVSquare;->getColor()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/color/SVSquare;->setGamma(I)V

    .line 277
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/SVSquare;->invalidate()V

    goto :goto_4

    :cond_f
    if-ne p1, v4, :cond_10

    .line 278
    iget-boolean p1, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->moving:Z

    if-eqz p1, :cond_10

    .line 280
    iget-object p1, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->hsv:[F

    iget-object v2, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->rect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v2

    iget-object v2, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v0, v2

    sub-float/2addr v1, v0

    mul-float/2addr v1, v6

    aput v1, p1, v3

    .line 281
    iget-object p1, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->hsv:[F

    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->hsv:[F

    aget v0, v0, v3

    const/4 v1, 0x0

    invoke-static {v0, v1, v6}, Lcom/brakefield/infinitestudio/color/ColorUtils;->clamp(FFF)F

    move-result v0

    aput v0, p1, v3

    .line 283
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/SVSquare;->updateToneLock()V

    .line 285
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/SVSquare;->invalidate()V

    .line 287
    :cond_10
    :goto_4
    iget-object p1, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->listener:Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/brakefield/infinitestudio/color/SVSquare;->listener:Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/SVSquare;->getColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/color/SVSquare;->toneLock(I)I

    move-result v0

    invoke-interface {p1, v0, v3}, Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;->colorChanged(IZ)V

    .line 300
    :cond_11
    :goto_5
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/SVSquare;->updatePaints()V

    .line 302
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/SVSquare;->invalidate()V

    return v4
.end method

.method protected updatePaints()V
    .locals 19

    move-object/from16 v0, p0

    const/4 v1, 0x3

    new-array v1, v1, [F

    .line 171
    iget-object v2, v0, Lcom/brakefield/infinitestudio/color/SVSquare;->hsv:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    aput v2, v1, v3

    const/4 v2, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v1, v2

    const/4 v2, 0x2

    aput v4, v1, v2

    .line 174
    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v10

    .line 176
    new-instance v1, Landroid/graphics/LinearGradient;

    iget-object v4, v0, Lcom/brakefield/infinitestudio/color/SVSquare;->rect:Landroid/graphics/RectF;

    iget v12, v4, Landroid/graphics/RectF;->left:F

    iget-object v4, v0, Lcom/brakefield/infinitestudio/color/SVSquare;->rect:Landroid/graphics/RectF;

    iget v13, v4, Landroid/graphics/RectF;->top:F

    iget-object v4, v0, Lcom/brakefield/infinitestudio/color/SVSquare;->rect:Landroid/graphics/RectF;

    iget v14, v4, Landroid/graphics/RectF;->left:F

    iget-object v4, v0, Lcom/brakefield/infinitestudio/color/SVSquare;->rect:Landroid/graphics/RectF;

    iget v15, v4, Landroid/graphics/RectF;->bottom:F

    const/high16 v4, -0x1000000

    filled-new-array {v3, v4}, [I

    move-result-object v16

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    sget-object v18, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v11, v1

    move-object/from16 v17, v2

    invoke-direct/range {v11 .. v18}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 178
    iget-object v2, v0, Lcom/brakefield/infinitestudio/color/SVSquare;->mBrightPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 180
    new-instance v1, Landroid/graphics/LinearGradient;

    iget-object v2, v0, Lcom/brakefield/infinitestudio/color/SVSquare;->rect:Landroid/graphics/RectF;

    iget v6, v2, Landroid/graphics/RectF;->right:F

    iget-object v2, v0, Lcom/brakefield/infinitestudio/color/SVSquare;->rect:Landroid/graphics/RectF;

    iget v7, v2, Landroid/graphics/RectF;->top:F

    iget-object v2, v0, Lcom/brakefield/infinitestudio/color/SVSquare;->rect:Landroid/graphics/RectF;

    iget v8, v2, Landroid/graphics/RectF;->left:F

    iget-object v2, v0, Lcom/brakefield/infinitestudio/color/SVSquare;->rect:Landroid/graphics/RectF;

    iget v9, v2, Landroid/graphics/RectF;->top:F

    const/4 v11, -0x1

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v5, v1

    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 182
    iget-object v2, v0, Lcom/brakefield/infinitestudio/color/SVSquare;->mColorPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 184
    iget-object v1, v0, Lcom/brakefield/infinitestudio/color/SVSquare;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/color/SVSquare;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 186
    iget-object v1, v0, Lcom/brakefield/infinitestudio/color/SVSquare;->prevPaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/brakefield/infinitestudio/color/SVSquare;->prevColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.class public Lcom/brakefield/infinitestudio/color/RGBWheel;
.super Lcom/brakefield/infinitestudio/color/ColorPickerView;
.source "RGBWheel.java"


# static fields
.field private static final BRIGHTNESS:I = 0x3

.field private static final CENTER:I = 0x0

.field private static final COLORS:I = 0x1

.field private static final NONE:I = -0x1

.field private static final SATURATES:I = 0x2


# instance fields
.field private final bwPeriods:[F

.field private in:I

.field private line:Lcom/brakefield/infinitestudio/geometry/Line;

.field private mBWColors:[I

.field private mBWPaint:Landroid/graphics/Paint;

.field private mCenterPaint:Landroid/graphics/Paint;

.field private mColorPaint:Landroid/graphics/Paint;

.field private mSatColors:[I

.field private mSatPaint:Landroid/graphics/Paint;

.field private mWheelColors:[I

.field private prevPaint:Landroid/graphics/Paint;

.field private r:F

.field private final satPeriods:[F

.field private startAngle:F

.field private sweep:F

.field private wheel:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 41
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/color/ColorPickerView;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x41d00000    # 26.0f

    .line 21
    iput p1, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->startAngle:F

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    const/high16 v0, 0x43340000    # 180.0f

    sub-float/2addr v0, p1

    .line 22
    iput v0, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->sweep:F

    const/4 p1, 0x2

    new-array v0, p1, [I

    .line 30
    iput-object v0, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->mSatColors:[I

    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 31
    iput-object v0, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->mWheelColors:[I

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 32
    iput-object v1, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->mBWColors:[I

    new-array p1, p1, [F

    .line 33
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->satPeriods:[F

    new-array p1, v0, [F

    .line 34
    fill-array-data p1, :array_1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->bwPeriods:[F

    .line 36
    new-instance p1, Lcom/brakefield/infinitestudio/geometry/Line;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0, v0, v0}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(FFFF)V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->line:Lcom/brakefield/infinitestudio/geometry/Line;

    const/4 p1, -0x1

    .line 196
    iput p1, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->in:I

    return-void

    :array_0
    .array-data 4
        0x3f31c6d2    # 0.69444f
        0x3f638e4c
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3e471b48    # 0.19444f
        0x3ec71c97    # 0.38889f
    .end array-data
.end method


# virtual methods
.method public init()V
    .locals 3

    .line 46
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/RGBWheel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/brakefield/infinitestudio/R$drawable;->color_wheel_hsb:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->wheel:Landroid/graphics/drawable/Drawable;

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->mColorPaint:Landroid/graphics/Paint;

    .line 49
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->mCenterPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40a00000    # 5.0f

    .line 52
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->mSatPaint:Landroid/graphics/Paint;

    .line 55
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->mBWPaint:Landroid/graphics/Paint;

    .line 58
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->prevPaint:Landroid/graphics/Paint;

    .line 61
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 62
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->prevPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 64
    invoke-virtual {p0, v1}, Lcom/brakefield/infinitestudio/color/RGBWheel;->setFocusable(Z)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 70
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/RGBWheel;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->w:I

    .line 71
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/RGBWheel;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->h:I

    .line 73
    iget v0, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->w:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->h:I

    if-gtz v0, :cond_0

    goto/16 :goto_1

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->mColorPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->w:I

    div-int/lit8 v1, v1, 0x8

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 80
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/RGBWheel;->updatePaints()V

    .line 82
    iget v0, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->w:I

    const/4 v1, 0x2

    div-int/2addr v0, v1

    .line 83
    iget v2, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->h:I

    div-int/2addr v2, v1

    .line 85
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    mul-int/lit8 v4, v3, 0x2

    int-to-float v4, v4

    const/high16 v5, 0x42080000    # 34.0f

    mul-float/2addr v4, v5

    const/high16 v5, 0x438c0000    # 280.0f

    div-float/2addr v4, v5

    float-to-int v4, v4

    int-to-float v5, v3

    .line 88
    iput v5, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->r:F

    .line 90
    iget-boolean v6, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->set:Z

    const/4 v7, 0x1

    if-nez v6, :cond_1

    iget v6, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->w:I

    if-lez v6, :cond_1

    iget v6, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->h:I

    if-lez v6, :cond_1

    .line 91
    iput-boolean v7, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->set:Z

    .line 92
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/RGBWheel;->updatePaints()V

    .line 95
    :cond_1
    iget-object v6, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->wheel:Landroid/graphics/drawable/Drawable;

    sub-int v8, v0, v3

    sub-int v9, v2, v3

    add-int/2addr v0, v3

    add-int/2addr v2, v3

    invoke-virtual {v6, v8, v9, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 97
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->wheel:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 99
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->mSatPaint:Landroid/graphics/Paint;

    int-to-float v2, v4

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 100
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->mBWPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 102
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 104
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/RGBWheel;->getWidth()I

    move-result v0

    div-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/RGBWheel;->getHeight()I

    move-result v2

    div-int/2addr v2, v1

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const v0, 0x3f524925

    mul-float/2addr v0, v5

    .line 108
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 109
    new-instance v3, Landroid/graphics/RectF;

    neg-float v4, v0

    invoke-direct {v3, v4, v4, v0, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v6, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->startAngle:F

    const/high16 v8, 0x43340000    # 180.0f

    add-float/2addr v6, v8

    iget v9, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->sweep:F

    invoke-virtual {v2, v3, v6, v9, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 111
    iget-object v3, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->mSatPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 113
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 114
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v4, v4, v0, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v4, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->startAngle:F

    iget v6, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->sweep:F

    invoke-virtual {v2, v3, v4, v6, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 116
    iget-object v3, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->mBWPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 118
    iget v2, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->startAngle:F

    add-float/2addr v2, v8

    iget v3, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->sweep:F

    iget-object v4, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->hsl:[F

    aget v4, v4, v7

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 120
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    float-to-double v3, v0

    float-to-double v6, v2

    .line 121
    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v8, v3

    double-to-float v0, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v6, v3

    double-to-float v2, v6

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 122
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->hueControl:Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 123
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 125
    iget v0, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->startAngle:F

    iget v2, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->sweep:F

    iget-object v6, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->hsl:[F

    aget v1, v6, v1

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v1, v6, v1

    mul-float/2addr v2, v1

    add-float/2addr v0, v2

    .line 127
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    float-to-double v0, v0

    .line 128
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v7, v3

    double-to-float v2, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v3, v0

    double-to-float v0, v3

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 129
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->hueControl:Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 130
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    const v0, 0x3f0ea0ea

    mul-float/2addr v0, v5

    .line 133
    iget-object v1, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->hsl:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    sub-float/2addr v6, v1

    float-to-double v1, v6

    const-wide v3, 0x401921fb54442d18L    # 6.283185307179586

    mul-double/2addr v1, v3

    double-to-float v1, v1

    .line 135
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    float-to-double v2, v0

    float-to-double v0, v1

    .line 136
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v6, v2

    double-to-float v4, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v2, v0

    double-to-float v0, v2

    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 137
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->hueControl:Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 138
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->toneLockControl:Landroid/graphics/drawable/Drawable;

    sget-boolean v1, Lcom/brakefield/infinitestudio/color/RGBWheel;->toneLock:Z

    if-eqz v1, :cond_2

    const/16 v1, 0xff

    goto :goto_0

    :cond_2
    const/16 v1, 0x3c

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 139
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->toneLockControl:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 140
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    const v0, 0x3e875075

    mul-float/2addr v5, v0

    .line 144
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->mCenterPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v5, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 145
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->prevPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v0, v2

    sub-float/2addr v5, v0

    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->prevPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v1, v5, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 147
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_3
    :goto_1
    const-wide/16 v0, 0x32

    .line 74
    invoke-virtual {p0, v0, v1}, Lcom/brakefield/infinitestudio/color/RGBWheel;->postInvalidateDelayed(J)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 19

    move-object/from16 v0, p0

    .line 201
    invoke-virtual/range {p0 .. p1}, Lcom/brakefield/infinitestudio/color/RGBWheel;->handleMultiTouch(Landroid/view/MotionEvent;)Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_2

    .line 202
    iget v1, v0, Lcom/brakefield/infinitestudio/color/RGBWheel;->in:I

    if-eq v1, v2, :cond_0

    .line 203
    iget-object v1, v0, Lcom/brakefield/infinitestudio/color/RGBWheel;->hsv:[F

    iget-object v2, v0, Lcom/brakefield/infinitestudio/color/RGBWheel;->downHSV:[F

    aget v2, v2, v3

    aput v2, v1, v3

    .line 204
    iget-object v1, v0, Lcom/brakefield/infinitestudio/color/RGBWheel;->hsv:[F

    iget-object v2, v0, Lcom/brakefield/infinitestudio/color/RGBWheel;->downHSV:[F

    aget v2, v2, v5

    aput v2, v1, v5

    .line 205
    iget-object v1, v0, Lcom/brakefield/infinitestudio/color/RGBWheel;->hsv:[F

    iget-object v2, v0, Lcom/brakefield/infinitestudio/color/RGBWheel;->downHSV:[F

    aget v2, v2, v4

    aput v2, v1, v4

    .line 207
    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/color/RGBWheel;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/color/RGBWheel;->setGamma(I)V

    .line 208
    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/color/RGBWheel;->invalidate()V

    .line 210
    iget-object v1, v0, Lcom/brakefield/infinitestudio/color/RGBWheel;->listener:Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/brakefield/infinitestudio/color/RGBWheel;->listener:Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;

    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/color/RGBWheel;->getColor()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/brakefield/infinitestudio/color/RGBWheel;->toneLock(I)I

    move-result v2

    invoke-interface {v1, v2, v5}, Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;->colorChanged(IZ)V

    goto :goto_0

    .line 211
    :cond_0
    iput v2, v0, Lcom/brakefield/infinitestudio/color/RGBWheel;->in:I

    :cond_1
    :goto_0
    return v5

    .line 215
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 216
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 218
    iget-object v7, v0, Lcom/brakefield/infinitestudio/color/RGBWheel;->line:Lcom/brakefield/infinitestudio/geometry/Line;

    iget v8, v0, Lcom/brakefield/infinitestudio/color/RGBWheel;->w:I

    div-int/2addr v8, v4

    int-to-float v8, v8

    iget v9, v0, Lcom/brakefield/infinitestudio/color/RGBWheel;->h:I

    div-int/2addr v9, v4

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9, v1, v6}, Lcom/brakefield/infinitestudio/geometry/Line;->init(FFFF)V

    .line 220
    iget-object v7, v0, Lcom/brakefield/infinitestudio/color/RGBWheel;->line:Lcom/brakefield/infinitestudio/geometry/Line;

    invoke-virtual {v7}, Lcom/brakefield/infinitestudio/geometry/Line;->getLength()F

    move-result v7

    .line 221
    iget-object v8, v0, Lcom/brakefield/infinitestudio/color/RGBWheel;->line:Lcom/brakefield/infinitestudio/geometry/Line;

    invoke-virtual {v8}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v8

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    double-to-float v8, v8

    const/4 v9, 0x0

    cmpg-float v9, v8, v9

    const/high16 v10, 0x43b40000    # 360.0f

    if-gez v9, :cond_3

    add-float/2addr v8, v10

    .line 224
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    const/high16 v11, 0x41200000    # 10.0f

    const/high16 v13, 0x3f800000    # 1.0f

    if-eqz v9, :cond_8

    if-eq v9, v5, :cond_5

    if-eq v9, v4, :cond_4

    goto/16 :goto_9

    :cond_4
    move v9, v8

    goto/16 :goto_3

    .line 297
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/color/RGBWheel;->clearFocus()V

    .line 298
    iget v1, v0, Lcom/brakefield/infinitestudio/color/RGBWheel;->in:I

    if-ne v1, v5, :cond_6

    iget-boolean v1, v0, Lcom/brakefield/infinitestudio/color/RGBWheel;->moving:Z

    if-nez v1, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/color/RGBWheel;->toggleToneLock()V

    .line 299
    :cond_6
    iget-object v1, v0, Lcom/brakefield/infinitestudio/color/RGBWheel;->listener:Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/brakefield/infinitestudio/color/RGBWheel;->listener:Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;

    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/color/RGBWheel;->getColor()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/brakefield/infinitestudio/color/RGBWheel;->toneLock(I)I

    move-result v3

    invoke-interface {v1, v3, v5}, Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;->colorChanged(IZ)V

    .line 300
    :cond_7
    iput v2, v0, Lcom/brakefield/infinitestudio/color/RGBWheel;->in:I

    goto/16 :goto_9

    .line 226
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/color/RGBWheel;->requestFocus()Z

    .line 228
    iput-boolean v3, v0, Lcom/brakefield/infinitestudio/color/RGBWheel;->moving:Z

    .line 230
    iget v2, v0, Lcom/brakefield/infinitestudio/color/RGBWheel;->r:F

    const v9, 0x3eb6db6e

    mul-float/2addr v9, v2

    cmpg-float v9, v7, v9

    if-gtz v9, :cond_9

    iput v3, v0, Lcom/brakefield/infinitestudio/color/RGBWheel;->in:I

    move v9, v8

    goto/16 :goto_2

    :cond_9
    const v9, 0x3f36db6e

    mul-float/2addr v2, v9

    cmpg-float v2, v7, v2

    if-gtz v2, :cond_b

    .line 233
    iput v5, v0, Lcom/brakefield/infinitestudio/color/RGBWheel;->in:I

    .line 235
    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/color/RGBWheel;->getWidth()I

    move-result v2

    .line 236
    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/color/RGBWheel;->getHeight()I

    move-result v7

    .line 238
    div-int/2addr v2, v4

    .line 239
    div-int/2addr v7, v4

    .line 241
    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    const v9, 0x3f0ea0ea

    int-to-float v7, v7

    mul-float/2addr v7, v9

    .line 244
    iget-object v9, v0, Lcom/brakefield/infinitestudio/color/RGBWheel;->hsl:[F

    aget v9, v9, v3

    sub-float v9, v13, v9

    float-to-double v14, v9

    const-wide v16, 0x401921fb54442d18L    # 6.283185307179586

    mul-double v14, v14, v16

    double-to-float v9, v14

    int-to-double v14, v2

    float-to-double v12, v7

    float-to-double v2, v9

    .line 245
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    mul-double v17, v17, v12

    move v9, v8

    add-double v7, v14, v17

    double-to-float v7, v7

    .line 246
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v12, v2

    add-double/2addr v14, v12

    double-to-float v2, v14

    .line 248
    invoke-static {v7, v2, v1, v6}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v2

    iget-object v3, v0, Lcom/brakefield/infinitestudio/color/RGBWheel;->hueControl:Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;

    invoke-virtual {v3}, Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    mul-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_a

    move v7, v5

    goto :goto_1

    :cond_a
    const/4 v7, 0x0

    :goto_1
    iput-boolean v7, v0, Lcom/brakefield/infinitestudio/color/RGBWheel;->moving:Z

    goto :goto_2

    :cond_b
    move v9, v8

    cmpl-float v2, v9, v11

    if-ltz v2, :cond_c

    const/high16 v2, 0x432a0000    # 170.0f

    cmpg-float v2, v9, v2

    if-gez v2, :cond_c

    const/4 v2, 0x3

    .line 251
    iput v2, v0, Lcom/brakefield/infinitestudio/color/RGBWheel;->in:I

    goto :goto_2

    :cond_c
    const/high16 v2, 0x433e0000    # 190.0f

    cmpl-float v2, v9, v2

    if-ltz v2, :cond_d

    const/high16 v2, 0x43af0000    # 350.0f

    cmpg-float v2, v9, v2

    if-gez v2, :cond_d

    .line 252
    iput v4, v0, Lcom/brakefield/infinitestudio/color/RGBWheel;->in:I

    .line 254
    :cond_d
    :goto_2
    iput v1, v0, Lcom/brakefield/infinitestudio/color/RGBWheel;->downX:F

    .line 255
    iput v6, v0, Lcom/brakefield/infinitestudio/color/RGBWheel;->downY:F

    .line 257
    iget-object v2, v0, Lcom/brakefield/infinitestudio/color/RGBWheel;->downHSV:[F

    iget-object v3, v0, Lcom/brakefield/infinitestudio/color/RGBWheel;->hsv:[F

    const/4 v7, 0x0

    aget v3, v3, v7

    aput v3, v2, v7

    .line 258
    iget-object v2, v0, Lcom/brakefield/infinitestudio/color/RGBWheel;->downHSV:[F

    iget-object v3, v0, Lcom/brakefield/infinitestudio/color/RGBWheel;->hsv:[F

    aget v3, v3, v5

    aput v3, v2, v5

    .line 259
    iget-object v2, v0, Lcom/brakefield/infinitestudio/color/RGBWheel;->downHSV:[F

    iget-object v3, v0, Lcom/brakefield/infinitestudio/color/RGBWheel;->hsv:[F

    aget v3, v3, v4

    aput v3, v2, v4

    .line 263
    :goto_3
    iget-boolean v2, v0, Lcom/brakefield/infinitestudio/color/RGBWheel;->moving:Z

    if-nez v2, :cond_f

    iget v2, v0, Lcom/brakefield/infinitestudio/color/RGBWheel;->downX:F

    iget v3, v0, Lcom/brakefield/infinitestudio/color/RGBWheel;->downY:F

    invoke-static {v2, v3, v1, v6}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v1

    cmpl-float v1, v1, v11

    if-lez v1, :cond_e

    move v1, v5

    goto :goto_4

    :cond_e
    const/4 v1, 0x0

    :goto_4
    iput-boolean v1, v0, Lcom/brakefield/infinitestudio/color/RGBWheel;->moving:Z

    .line 265
    :cond_f
    iget v1, v0, Lcom/brakefield/infinitestudio/color/RGBWheel;->in:I

    const/high16 v3, 0x43340000    # 180.0f

    const/4 v2, 0x3

    if-ne v1, v2, :cond_13

    .line 267
    iget v1, v0, Lcom/brakefield/infinitestudio/color/RGBWheel;->startAngle:F

    sub-float v2, v3, v1

    cmpl-float v2, v9, v2

    const/high16 v6, 0x43870000    # 270.0f

    if-lez v2, :cond_10

    cmpg-float v2, v9, v6

    if-gez v2, :cond_10

    sub-float v8, v3, v1

    goto :goto_5

    :cond_10
    move v8, v9

    :goto_5
    cmpg-float v2, v8, v1

    if-ltz v2, :cond_11

    cmpl-float v2, v8, v6

    if-ltz v2, :cond_12

    :cond_11
    move v8, v1

    :cond_12
    sub-float/2addr v8, v1

    .line 272
    iget-object v1, v0, Lcom/brakefield/infinitestudio/color/RGBWheel;->hsl:[F

    iget v2, v0, Lcom/brakefield/infinitestudio/color/RGBWheel;->sweep:F

    div-float/2addr v8, v2

    aput v8, v1, v4

    .line 273
    iget-object v1, v0, Lcom/brakefield/infinitestudio/color/RGBWheel;->hsl:[F

    iget-object v2, v0, Lcom/brakefield/infinitestudio/color/RGBWheel;->hsl:[F

    aget v2, v2, v4

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v13, v3, v2

    aput v13, v1, v4

    goto :goto_8

    :cond_13
    if-ne v1, v4, :cond_17

    .line 276
    iget v1, v0, Lcom/brakefield/infinitestudio/color/RGBWheel;->startAngle:F

    sub-float v2, v10, v1

    cmpl-float v2, v9, v2

    const/high16 v4, 0x42b40000    # 90.0f

    if-gtz v2, :cond_15

    cmpg-float v2, v9, v4

    if-gez v2, :cond_14

    goto :goto_6

    :cond_14
    move v8, v9

    goto :goto_7

    :cond_15
    :goto_6
    sub-float v8, v10, v1

    :goto_7
    add-float v2, v1, v3

    cmpg-float v2, v8, v2

    if-gez v2, :cond_16

    cmpl-float v2, v8, v4

    if-ltz v2, :cond_16

    add-float v8, v1, v3

    :cond_16
    add-float/2addr v1, v3

    sub-float/2addr v8, v1

    .line 282
    iget-object v1, v0, Lcom/brakefield/infinitestudio/color/RGBWheel;->hsl:[F

    iget v2, v0, Lcom/brakefield/infinitestudio/color/RGBWheel;->sweep:F

    div-float/2addr v8, v2

    aput v8, v1, v5

    goto :goto_8

    :cond_17
    if-ne v1, v5, :cond_18

    .line 284
    iget-boolean v1, v0, Lcom/brakefield/infinitestudio/color/RGBWheel;->moving:Z

    if-eqz v1, :cond_18

    .line 285
    iget-object v1, v0, Lcom/brakefield/infinitestudio/color/RGBWheel;->hsl:[F

    div-float v8, v9, v10

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v13, v2, v8

    const/4 v2, 0x0

    aput v13, v1, v2

    .line 286
    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/color/RGBWheel;->updateToneLock()V

    .line 289
    :cond_18
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/color/RGBWheel;->invalidate()V

    .line 291
    iget-object v1, v0, Lcom/brakefield/infinitestudio/color/RGBWheel;->hsl:[F

    invoke-static {v1}, Lcom/brakefield/infinitestudio/color/HSLColor;->toRGB([F)I

    move-result v1

    iget-object v2, v0, Lcom/brakefield/infinitestudio/color/RGBWheel;->hsv:[F

    invoke-static {v1, v2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 292
    iget-object v1, v0, Lcom/brakefield/infinitestudio/color/RGBWheel;->hsv:[F

    iget-object v2, v0, Lcom/brakefield/infinitestudio/color/RGBWheel;->hsl:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    mul-float/2addr v2, v10

    aput v2, v1, v3

    .line 293
    iget v1, v0, Lcom/brakefield/infinitestudio/color/RGBWheel;->in:I

    if-eq v1, v5, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/color/RGBWheel;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/color/RGBWheel;->setGamma(I)V

    .line 294
    :cond_19
    iget-object v1, v0, Lcom/brakefield/infinitestudio/color/RGBWheel;->listener:Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;

    if-eqz v1, :cond_1a

    iget-object v1, v0, Lcom/brakefield/infinitestudio/color/RGBWheel;->listener:Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;

    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/color/RGBWheel;->getColor()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/brakefield/infinitestudio/color/RGBWheel;->toneLock(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;->colorChanged(IZ)V

    :cond_1a
    :goto_9
    return v5
.end method

.method protected updatePaints()V
    .locals 13

    const/4 v0, 0x3

    new-array v1, v0, [F

    .line 154
    iget-object v2, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->hsv:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    aput v2, v1, v3

    const/4 v2, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v1, v2

    const/4 v5, 0x2

    aput v4, v1, v5

    .line 157
    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    .line 159
    iget-object v6, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->mSatColors:[I

    const/16 v7, 0x7f

    const/16 v8, 0xff

    invoke-static {v8, v7, v7, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    aput v7, v6, v3

    .line 160
    iget-object v6, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->mSatColors:[I

    aput v1, v6, v2

    .line 161
    new-instance v6, Landroid/graphics/SweepGradient;

    iget-object v7, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->mSatColors:[I

    iget-object v9, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->satPeriods:[F

    const/4 v10, 0x0

    invoke-direct {v6, v10, v10, v7, v9}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 162
    iget-object v7, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->mSatPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 164
    iget-object v6, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->hsl:[F

    aget v6, v6, v2

    const/high16 v7, -0x3d000000    # -128.0f

    mul-float/2addr v6, v7

    iget-object v9, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->hsl:[F

    aget v9, v9, v5

    sub-float v9, v4, v9

    const/high16 v11, 0x437f0000    # 255.0f

    mul-float/2addr v9, v11

    add-float/2addr v6, v9

    iget-object v9, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->hsl:[F

    aget v9, v9, v2

    iget-object v12, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->hsl:[F

    aget v12, v12, v5

    sub-float v12, v4, v12

    mul-float/2addr v9, v12

    mul-float/2addr v9, v11

    add-float/2addr v6, v9

    iget-object v9, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->hsl:[F

    aget v9, v9, v2

    const/high16 v12, 0x43000000    # 128.0f

    mul-float/2addr v9, v12

    add-float/2addr v6, v9

    float-to-int v6, v6

    .line 165
    iget-object v9, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->hsl:[F

    aget v9, v9, v2

    mul-float/2addr v9, v7

    iget-object v7, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->hsl:[F

    aget v7, v7, v5

    sub-float v7, v4, v7

    mul-float/2addr v7, v11

    add-float/2addr v9, v7

    iget-object v7, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->hsl:[F

    aget v7, v7, v2

    iget-object v12, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->hsl:[F

    aget v12, v12, v5

    sub-float/2addr v4, v12

    mul-float/2addr v7, v4

    mul-float/2addr v7, v11

    add-float/2addr v9, v7

    iget-object v4, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->hsl:[F

    aget v4, v4, v2

    const/high16 v7, 0x42fe0000    # 127.0f

    mul-float/2addr v4, v7

    sub-float/2addr v9, v4

    float-to-int v4, v9

    if-le v6, v8, :cond_0

    move v6, v8

    :cond_0
    if-gez v4, :cond_1

    move v4, v3

    .line 170
    :cond_1
    iget-object v7, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->mWheelColors:[I

    invoke-static {v8, v6, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/brakefield/infinitestudio/color/RGBWheel;->toneLock(I)I

    move-result v9

    aput v9, v7, v3

    .line 171
    iget-object v7, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->mWheelColors:[I

    invoke-static {v8, v6, v6, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/brakefield/infinitestudio/color/RGBWheel;->toneLock(I)I

    move-result v9

    aput v9, v7, v2

    .line 172
    iget-object v7, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->mWheelColors:[I

    invoke-static {v8, v4, v6, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/brakefield/infinitestudio/color/RGBWheel;->toneLock(I)I

    move-result v9

    aput v9, v7, v5

    .line 173
    iget-object v7, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->mWheelColors:[I

    invoke-static {v8, v4, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/brakefield/infinitestudio/color/RGBWheel;->toneLock(I)I

    move-result v9

    aput v9, v7, v0

    .line 174
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->mWheelColors:[I

    invoke-static {v8, v4, v4, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/brakefield/infinitestudio/color/RGBWheel;->toneLock(I)I

    move-result v7

    const/4 v9, 0x4

    aput v7, v0, v9

    .line 175
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->mWheelColors:[I

    invoke-static {v8, v6, v4, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/brakefield/infinitestudio/color/RGBWheel;->toneLock(I)I

    move-result v7

    const/4 v9, 0x5

    aput v7, v0, v9

    .line 176
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->mWheelColors:[I

    invoke-static {v8, v6, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/brakefield/infinitestudio/color/RGBWheel;->toneLock(I)I

    move-result v4

    const/4 v6, 0x6

    aput v4, v0, v6

    .line 177
    new-instance v0, Landroid/graphics/SweepGradient;

    iget-object v4, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->mWheelColors:[I

    const/4 v6, 0x0

    invoke-direct {v0, v10, v10, v4, v6}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 178
    iget-object v4, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->mColorPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 180
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->mBWColors:[I

    invoke-static {v8, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    aput v4, v0, v3

    .line 181
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->mBWColors:[I

    aput v1, v0, v2

    .line 182
    invoke-static {v8, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    aput v1, v0, v5

    .line 183
    new-instance v0, Landroid/graphics/SweepGradient;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->mBWColors:[I

    iget-object v2, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->bwPeriods:[F

    invoke-direct {v0, v10, v10, v1, v2}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 184
    iget-object v1, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->mBWPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 186
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/RGBWheel;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 188
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->prevPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/brakefield/infinitestudio/color/RGBWheel;->prevColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.class public abstract Lcom/brakefield/infinitestudio/color/HSBCircleShape;
.super Lcom/brakefield/infinitestudio/color/ColorPickerView;
.source "HSBCircleShape.java"


# static fields
.field private static final CENTER:I = 0x0

.field private static final HUE:I = 0x1

.field private static final NONE:I = -0x1


# instance fields
.field private drawComplimentary:Z

.field private in:I

.field protected innerControl:Lcom/brakefield/infinitestudio/geometry/Point;

.field protected mBrightPaint:Landroid/graphics/Paint;

.field protected mColorPaint:Landroid/graphics/Paint;

.field private mMarkerPaint:Landroid/graphics/Paint;

.field protected mPaint:Landroid/graphics/Paint;

.field protected prevPaint:Landroid/graphics/Paint;

.field protected rect:Landroid/graphics/Rect;

.field private wheel:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/color/ColorPickerView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 23
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->drawComplimentary:Z

    .line 28
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->rect:Landroid/graphics/Rect;

    .line 29
    new-instance p1, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {p1}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->innerControl:Lcom/brakefield/infinitestudio/geometry/Point;

    const/4 p1, -0x1

    .line 222
    iput p1, p0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->in:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/brakefield/infinitestudio/color/ColorPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 23
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->drawComplimentary:Z

    .line 28
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->rect:Landroid/graphics/Rect;

    .line 29
    new-instance p1, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {p1}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->innerControl:Lcom/brakefield/infinitestudio/geometry/Point;

    const/4 p1, -0x1

    .line 222
    iput p1, p0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->in:I

    return-void
.end method


# virtual methods
.method protected abstract drawInnerShape(Landroid/graphics/Canvas;)V
.end method

.method protected abstract getDrawableId()I
.end method

.method public init()V
    .locals 3

    .line 40
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->getDrawableId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->wheel:Landroid/graphics/drawable/Drawable;

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->mBrightPaint:Landroid/graphics/Paint;

    .line 43
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->mColorPaint:Landroid/graphics/Paint;

    .line 46
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->mMarkerPaint:Landroid/graphics/Paint;

    .line 49
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 50
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->mMarkerPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 51
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->mMarkerPaint:Landroid/graphics/Paint;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->mPaint:Landroid/graphics/Paint;

    .line 54
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 56
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->prevPaint:Landroid/graphics/Paint;

    .line 57
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 58
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->prevPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 60
    invoke-virtual {p0, v1}, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->setFocusable(Z)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 66
    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->getWidth()I

    move-result v2

    iput v2, v0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->w:I

    .line 67
    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->getHeight()I

    move-result v2

    iput v2, v0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->h:I

    .line 69
    iget v2, v0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->w:I

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    .line 70
    iget v4, v0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->h:I

    int-to-float v4, v4

    mul-float/2addr v4, v3

    .line 72
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->updateRect()V

    .line 77
    iget-boolean v5, v0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->set:Z

    const/4 v6, 0x1

    if-nez v5, :cond_0

    iget v5, v0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->w:I

    if-lez v5, :cond_0

    iget v5, v0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->h:I

    if-lez v5, :cond_0

    .line 78
    iput-boolean v6, v0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->set:Z

    .line 79
    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->updatePaints()V

    .line 82
    :cond_0
    iget-object v5, v0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->wheel:Landroid/graphics/drawable/Drawable;

    sub-float v7, v2, v3

    float-to-int v7, v7

    sub-float v8, v4, v3

    float-to-int v8, v8

    add-float v9, v2, v3

    float-to-int v9, v9

    add-float v10, v4, v3

    float-to-int v10, v10

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 84
    iget-object v5, v0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->wheel:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 86
    invoke-virtual/range {p0 .. p1}, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->drawInnerShape(Landroid/graphics/Canvas;)V

    .line 90
    iget-object v5, v0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->hsv:[F

    const/4 v7, 0x0

    aget v5, v5, v7

    const/high16 v7, 0x43b40000    # 360.0f

    sub-float/2addr v7, v5

    const v5, 0x3f541d42

    mul-float/2addr v3, v5

    float-to-double v8, v2

    float-to-double v10, v3

    float-to-double v12, v7

    .line 93
    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v14, v10

    add-double/2addr v14, v8

    double-to-float v5, v14

    .line 94
    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    double-to-float v8, v8

    .line 96
    iget v9, v0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->w:I

    int-to-float v9, v9

    const/high16 v10, 0x3c800000    # 0.015625f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    .line 98
    iget-boolean v10, v0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->drawSplitAnalogous:Z

    const/high16 v11, 0x43340000    # 180.0f

    const/high16 v12, 0x41f00000    # 30.0f

    const/4 v13, 0x0

    if-eqz v10, :cond_1

    .line 100
    new-instance v10, Landroid/graphics/Path;

    invoke-direct {v10}, Landroid/graphics/Path;-><init>()V

    .line 101
    new-instance v14, Landroid/graphics/RectF;

    neg-int v15, v9

    int-to-float v15, v15

    int-to-float v6, v9

    invoke-direct {v14, v15, v15, v6, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v6, -0x3ccc0000    # -180.0f

    invoke-virtual {v10, v14, v13, v6}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 103
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 104
    invoke-virtual {v1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 105
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    sub-float v6, v7, v12

    .line 106
    invoke-virtual {v1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 107
    invoke-virtual {v1, v3, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 108
    iget-object v6, v0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->mMarkerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v10, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 109
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    add-float v6, v7, v12

    .line 110
    invoke-virtual {v1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 111
    invoke-virtual {v1, v3, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 112
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 113
    invoke-virtual {v1, v11}, Landroid/graphics/Canvas;->rotate(F)V

    .line 114
    iget-object v6, v0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->mMarkerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v10, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 115
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 116
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 119
    :cond_1
    iget-boolean v6, v0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->drawComplimentary:Z

    const v10, -0x40b33333    # -0.8f

    if-eqz v6, :cond_2

    .line 121
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    int-to-float v14, v9

    .line 122
    invoke-virtual {v6, v14, v13}, Landroid/graphics/Path;->moveTo(FF)V

    const v15, 0x3f4ccccd    # 0.8f

    mul-float/2addr v15, v14

    .line 123
    invoke-virtual {v6, v13, v15}, Landroid/graphics/Path;->lineTo(FF)V

    neg-int v15, v9

    int-to-float v15, v15

    .line 124
    invoke-virtual {v6, v15, v13}, Landroid/graphics/Path;->lineTo(FF)V

    mul-float/2addr v14, v10

    .line 125
    invoke-virtual {v6, v13, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 126
    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    .line 128
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 129
    invoke-virtual {v1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    add-float v14, v7, v11

    .line 130
    invoke-virtual {v1, v14}, Landroid/graphics/Canvas;->rotate(F)V

    .line 131
    invoke-virtual {v1, v3, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 132
    iget-object v14, v0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->mMarkerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v14}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 133
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 136
    :cond_2
    iget-boolean v6, v0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->drawSplitComplimentary:Z

    if-eqz v6, :cond_3

    .line 138
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    int-to-float v14, v9

    .line 139
    invoke-virtual {v6, v14, v13}, Landroid/graphics/Path;->moveTo(FF)V

    mul-float/2addr v14, v10

    .line 140
    invoke-virtual {v6, v13, v14}, Landroid/graphics/Path;->lineTo(FF)V

    neg-int v10, v9

    int-to-float v10, v10

    .line 141
    invoke-virtual {v6, v10, v13}, Landroid/graphics/Path;->lineTo(FF)V

    .line 142
    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    .line 144
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 145
    invoke-virtual {v1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 146
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    add-float v10, v7, v11

    sub-float v14, v10, v12

    .line 147
    invoke-virtual {v1, v14}, Landroid/graphics/Canvas;->rotate(F)V

    .line 148
    invoke-virtual {v1, v3, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 149
    iget-object v14, v0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->mMarkerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v14}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 150
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    add-float/2addr v10, v12

    .line 151
    invoke-virtual {v1, v10}, Landroid/graphics/Canvas;->rotate(F)V

    .line 152
    invoke-virtual {v1, v3, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 153
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 154
    invoke-virtual {v1, v11}, Landroid/graphics/Canvas;->rotate(F)V

    .line 155
    iget-object v10, v0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->mMarkerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 156
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 157
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 160
    :cond_3
    iget-boolean v6, v0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->drawTriadic:Z

    if-eqz v6, :cond_4

    .line 162
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    int-to-float v10, v9

    .line 163
    invoke-virtual {v6, v10, v13}, Landroid/graphics/Path;->moveTo(FF)V

    neg-int v11, v9

    int-to-float v11, v11

    .line 164
    invoke-virtual {v6, v11, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 165
    invoke-virtual {v6, v11, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 166
    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    const/4 v10, 0x1

    :goto_0
    const/4 v11, 0x3

    if-ge v10, v11, :cond_4

    .line 169
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 170
    invoke-virtual {v1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    mul-int/lit8 v11, v10, 0x78

    int-to-float v11, v11

    add-float/2addr v11, v7

    .line 171
    invoke-virtual {v1, v11}, Landroid/graphics/Canvas;->rotate(F)V

    .line 172
    invoke-virtual {v1, v3, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 173
    iget-object v11, v0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->mMarkerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v11}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 174
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 178
    :cond_4
    iget-boolean v6, v0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->drawSquare:Z

    if-eqz v6, :cond_5

    .line 180
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    neg-int v10, v9

    int-to-float v10, v10

    int-to-float v9, v9

    .line 181
    sget-object v21, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v16, v6

    move/from16 v17, v10

    move/from16 v18, v10

    move/from16 v19, v9

    move/from16 v20, v9

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    const/4 v9, 0x1

    :goto_1
    const/4 v10, 0x4

    if-ge v9, v10, :cond_5

    .line 184
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 185
    invoke-virtual {v1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    mul-int/lit8 v10, v9, 0x5a

    int-to-float v10, v10

    add-float/2addr v10, v7

    .line 186
    invoke-virtual {v1, v10}, Landroid/graphics/Canvas;->rotate(F)V

    .line 187
    invoke-virtual {v1, v3, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 188
    iget-object v10, v0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->mMarkerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 189
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 193
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->updateControlFromSaturationBrightness()V

    .line 195
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 196
    invoke-virtual {v1, v5, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 197
    iget-object v2, v0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->hueControl:Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;

    invoke-virtual {v2, v1}, Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 198
    iget-object v2, v0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->toneLockControl:Landroid/graphics/drawable/Drawable;

    sget-boolean v3, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->toneLock:Z

    if-eqz v3, :cond_6

    const/16 v3, 0xff

    goto :goto_2

    :cond_6
    const/16 v3, 0x3c

    :goto_2
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 199
    iget-object v2, v0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->toneLockControl:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 200
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 202
    iget-object v2, v0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->control:Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;

    iget-object v3, v0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;->setColor(I)V

    .line 204
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 205
    iget-object v2, v0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->innerControl:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v3, v0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->innerControl:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 206
    iget-object v2, v0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->control:Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;

    invoke-virtual {v2, v1}, Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 207
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 209
    iget-object v2, v0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->innerControl:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v3, v0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->innerControl:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v4, v0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->knobSize:I

    int-to-float v4, v4

    iget-object v5, v0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->prevPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v5

    const/high16 v6, 0x3fc00000    # 1.5f

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget-object v5, v0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->prevPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17

    move-object/from16 v0, p0

    .line 227
    invoke-virtual/range {p0 .. p1}, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->handleMultiTouch(Landroid/view/MotionEvent;)Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_2

    .line 228
    iget v1, v0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->in:I

    if-eq v1, v2, :cond_0

    .line 229
    iget-object v1, v0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->hsv:[F

    iget-object v2, v0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->downHSV:[F

    aget v2, v2, v4

    aput v2, v1, v4

    .line 230
    iget-object v1, v0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->hsv:[F

    iget-object v2, v0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->downHSV:[F

    aget v2, v2, v5

    aput v2, v1, v5

    .line 231
    iget-object v1, v0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->hsv:[F

    iget-object v2, v0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->downHSV:[F

    aget v2, v2, v3

    aput v2, v1, v3

    .line 232
    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->setGamma(I)V

    .line 233
    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->invalidate()V

    .line 234
    iget-object v1, v0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->listener:Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->listener:Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;

    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->getColor()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->toneLock(I)I

    move-result v2

    invoke-interface {v1, v2, v5}, Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;->colorChanged(IZ)V

    goto :goto_0

    .line 235
    :cond_0
    iput v2, v0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->in:I

    :cond_1
    :goto_0
    return v5

    .line 239
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 240
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 242
    new-instance v7, Lcom/brakefield/infinitestudio/geometry/Line;

    iget v8, v0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->w:I

    div-int/2addr v8, v3

    int-to-float v8, v8

    iget v9, v0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->h:I

    div-int/2addr v9, v3

    int-to-float v9, v9

    invoke-direct {v7, v8, v9, v1, v6}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(FFFF)V

    .line 244
    invoke-virtual {v7}, Lcom/brakefield/infinitestudio/geometry/Line;->getLength()F

    move-result v8

    .line 245
    invoke-virtual {v7}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v7

    float-to-double v9, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v9

    double-to-float v7, v9

    .line 247
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    const/high16 v10, 0x43b40000    # 360.0f

    if-eqz v9, :cond_5

    if-eq v9, v5, :cond_3

    if-eq v9, v3, :cond_8

    goto/16 :goto_5

    .line 294
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->clearFocus()V

    .line 295
    iget v1, v0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->in:I

    if-ne v1, v5, :cond_4

    iget-boolean v1, v0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->moving:Z

    if-nez v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->toggleToneLock()V

    .line 296
    :cond_4
    iput v2, v0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->in:I

    .line 297
    iget-object v1, v0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->listener:Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;

    if-eqz v1, :cond_d

    iget-object v1, v0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->listener:Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;

    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->getColor()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->toneLock(I)I

    move-result v2

    invoke-interface {v1, v2, v5}, Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;->colorChanged(IZ)V

    goto/16 :goto_5

    .line 250
    :cond_5
    iput-boolean v4, v0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->moving:Z

    .line 252
    iget v2, v0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->w:I

    int-to-float v2, v2

    const v9, 0x40333333    # 2.8f

    div-float/2addr v2, v9

    cmpl-float v2, v8, v2

    if-ltz v2, :cond_7

    .line 253
    iput v5, v0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->in:I

    .line 255
    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->getWidth()I

    move-result v2

    .line 256
    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->getHeight()I

    move-result v8

    .line 258
    div-int/2addr v2, v3

    .line 259
    div-int/2addr v8, v3

    .line 261
    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 263
    iget-object v9, v0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->hsv:[F

    aget v9, v9, v4

    sub-float v9, v10, v9

    int-to-float v8, v8

    const v11, 0x3f541d42

    mul-float/2addr v8, v11

    int-to-double v11, v2

    float-to-double v13, v8

    float-to-double v8, v9

    .line 265
    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double/2addr v15, v13

    add-double v4, v11, v15

    double-to-float v4, v4

    .line 266
    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v13, v8

    add-double/2addr v11, v13

    double-to-float v5, v11

    .line 268
    invoke-static {v4, v5, v1, v6}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v4

    iget-object v5, v0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->hueControl:Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;

    invoke-virtual {v5}, Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    mul-int/2addr v5, v3

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_6

    const/4 v4, 0x1

    goto :goto_1

    :cond_6
    const/4 v4, 0x0

    :goto_1
    iput-boolean v4, v0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->moving:Z

    const/4 v4, 0x0

    goto :goto_2

    .line 270
    :cond_7
    iput v4, v0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->in:I

    .line 272
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->requestFocus()Z

    .line 273
    iput v1, v0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->downX:F

    .line 274
    iput v6, v0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->downY:F

    .line 276
    iget-object v5, v0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->downHSV:[F

    iget-object v8, v0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->hsv:[F

    aget v8, v8, v4

    aput v8, v5, v4

    .line 277
    iget-object v4, v0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->downHSV:[F

    iget-object v5, v0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->hsv:[F

    const/4 v2, 0x1

    aget v5, v5, v2

    aput v5, v4, v2

    .line 278
    iget-object v4, v0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->downHSV:[F

    iget-object v5, v0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->hsv:[F

    aget v5, v5, v3

    aput v5, v4, v3

    .line 281
    :cond_8
    iget-boolean v3, v0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->moving:Z

    if-nez v3, :cond_a

    iget v3, v0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->downX:F

    iget v4, v0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->downY:F

    invoke-static {v3, v4, v1, v6}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v3

    const/high16 v4, 0x41200000    # 10.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_9

    const/4 v3, 0x1

    goto :goto_3

    :cond_9
    const/4 v3, 0x0

    :goto_3
    iput-boolean v3, v0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->moving:Z

    .line 282
    :cond_a
    iget v3, v0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->in:I

    const/4 v2, 0x1

    if-ne v3, v2, :cond_b

    iget-boolean v3, v0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->moving:Z

    if-eqz v3, :cond_b

    .line 283
    iget-object v1, v0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->hsv:[F

    sub-float/2addr v10, v7

    const/4 v3, 0x0

    aput v10, v1, v3

    .line 284
    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->updateToneLock()V

    .line 285
    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->invalidate()V

    goto :goto_4

    .line 286
    :cond_b
    iget v3, v0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->in:I

    if-nez v3, :cond_c

    .line 287
    invoke-virtual {v0, v1, v6}, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->updateSaturationBrightnessFromXY(FF)V

    .line 288
    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->setGamma(I)V

    .line 289
    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->invalidate()V

    .line 291
    :cond_c
    :goto_4
    iget-object v1, v0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->listener:Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;

    if-eqz v1, :cond_d

    iget-object v1, v0, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->listener:Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;

    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->getColor()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->toneLock(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;->colorChanged(IZ)V

    .line 301
    :cond_d
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->updatePaints()V

    .line 302
    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/color/HSBCircleShape;->invalidate()V

    const/4 v1, 0x1

    return v1
.end method

.method protected abstract updateControlFromSaturationBrightness()V
.end method

.method protected abstract updatePaints()V
.end method

.method protected abstract updateRect()V
.end method

.method protected abstract updateSaturationBrightnessFromXY(FF)V
.end method

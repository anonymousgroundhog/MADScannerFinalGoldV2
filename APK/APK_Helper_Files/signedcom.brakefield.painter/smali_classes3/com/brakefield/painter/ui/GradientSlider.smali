.class public Lcom/brakefield/painter/ui/GradientSlider;
.super Landroid/view/View;
.source "GradientSlider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/painter/ui/GradientSlider$OnGradientChangedListener;
    }
.end annotation


# instance fields
.field private added:Z

.field private adjustingIndex:I

.field private downX:F

.field private downY:F

.field private gradient:Lcom/brakefield/painter/nativeobjs/color/GradientNative;

.field private final knob:Lcom/brakefield/infinitestudio/ui/KnobDrawable;

.field private final knobSize:F

.field private listener:Lcom/brakefield/painter/ui/GradientSlider$OnGradientChangedListener;

.field private moving:Z

.field private final paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/GradientSlider;->paint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    .line 26
    iput v0, p0, Lcom/brakefield/painter/ui/GradientSlider;->adjustingIndex:I

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/brakefield/painter/ui/GradientSlider;->added:Z

    .line 29
    iput-boolean v0, p0, Lcom/brakefield/painter/ui/GradientSlider;->moving:Z

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/brakefield/painter/ui/GradientSlider;->gradient:Lcom/brakefield/painter/nativeobjs/color/GradientNative;

    .line 34
    iput-object v0, p0, Lcom/brakefield/painter/ui/GradientSlider;->listener:Lcom/brakefield/painter/ui/GradientSlider$OnGradientChangedListener;

    .line 39
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/GradientSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v1, 0x41e00000    # 28.0f

    invoke-static {p2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/brakefield/painter/ui/GradientSlider;->knobSize:F

    .line 41
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/GradientSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {p2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    .line 42
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 43
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 44
    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 46
    new-instance p1, Lcom/brakefield/infinitestudio/ui/KnobDrawable;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result p2

    invoke-direct {p1, p2}, Lcom/brakefield/infinitestudio/ui/KnobDrawable;-><init>(F)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/GradientSlider;->knob:Lcom/brakefield/infinitestudio/ui/KnobDrawable;

    return-void
.end method

.method private getCenterY()F
    .locals 2

    .line 106
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/GradientSlider;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    return v0
.end method

.method private getHorizontalPadding()F
    .locals 2

    .line 94
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/GradientSlider;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/brakefield/painter/ui/GradientSlider;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    return v0
.end method

.method private getPositionForX(F)F
    .locals 1

    .line 102
    invoke-direct {p0}, Lcom/brakefield/painter/ui/GradientSlider;->getProgressLeft()F

    move-result v0

    sub-float/2addr p1, v0

    invoke-direct {p0}, Lcom/brakefield/painter/ui/GradientSlider;->getProgressWidth()F

    move-result v0

    div-float/2addr p1, v0

    return p1
.end method

.method private getProgressLeft()F
    .locals 2

    .line 86
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/GradientSlider;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/brakefield/painter/ui/GradientSlider;->knobSize:F

    add-float/2addr v0, v1

    return v0
.end method

.method private getProgressWidth()F
    .locals 3

    .line 90
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/GradientSlider;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    iget v2, p0, Lcom/brakefield/painter/ui/GradientSlider;->knobSize:F

    mul-float/2addr v2, v1

    sub-float/2addr v0, v2

    invoke-direct {p0}, Lcom/brakefield/painter/ui/GradientSlider;->getHorizontalPadding()F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method private getXforPosition(FFF)F
    .locals 0

    mul-float/2addr p2, p3

    add-float/2addr p1, p2

    return p1
.end method

.method private onDown(FF)V
    .locals 4

    .line 129
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/GradientSlider;->reset()V

    .line 131
    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/GradientSlider;->getPositionForX(F)F

    move-result v0

    .line 133
    iget-object v1, p0, Lcom/brakefield/painter/ui/GradientSlider;->gradient:Lcom/brakefield/painter/nativeobjs/color/GradientNative;

    invoke-virtual {v1, v0}, Lcom/brakefield/painter/nativeobjs/color/GradientNative;->closestColorStop(F)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 135
    iput v1, p0, Lcom/brakefield/painter/ui/GradientSlider;->adjustingIndex:I

    .line 136
    iget-object v2, p0, Lcom/brakefield/painter/ui/GradientSlider;->gradient:Lcom/brakefield/painter/nativeobjs/color/GradientNative;

    invoke-virtual {v2, v1}, Lcom/brakefield/painter/nativeobjs/color/GradientNative;->positionAt(I)F

    move-result v1

    .line 137
    invoke-direct {p0}, Lcom/brakefield/painter/ui/GradientSlider;->getProgressLeft()F

    move-result v2

    invoke-direct {p0}, Lcom/brakefield/painter/ui/GradientSlider;->getProgressWidth()F

    move-result v3

    invoke-direct {p0, v2, v3, v1}, Lcom/brakefield/painter/ui/GradientSlider;->getXforPosition(FFF)F

    move-result v1

    .line 138
    invoke-direct {p0}, Lcom/brakefield/painter/ui/GradientSlider;->getCenterY()F

    move-result v2

    .line 139
    invoke-static {p1, p2, v1, v2}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v1

    .line 140
    sget v2, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->TOUCH_SIZE:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/brakefield/painter/ui/GradientSlider;->gradient:Lcom/brakefield/painter/nativeobjs/color/GradientNative;

    invoke-virtual {v1, v0}, Lcom/brakefield/painter/nativeobjs/color/GradientNative;->insertColorStopAt(F)I

    move-result v0

    iput v0, p0, Lcom/brakefield/painter/ui/GradientSlider;->adjustingIndex:I

    .line 142
    iget-object v0, p0, Lcom/brakefield/painter/ui/GradientSlider;->listener:Lcom/brakefield/painter/ui/GradientSlider$OnGradientChangedListener;

    invoke-interface {v0}, Lcom/brakefield/painter/ui/GradientSlider$OnGradientChangedListener;->onNumberOfColorStopsChanged()V

    const/4 v0, 0x1

    .line 143
    iput-boolean v0, p0, Lcom/brakefield/painter/ui/GradientSlider;->added:Z

    .line 144
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/GradientSlider;->postInvalidate()V

    .line 148
    :cond_0
    iput p1, p0, Lcom/brakefield/painter/ui/GradientSlider;->downX:F

    .line 149
    iput p2, p0, Lcom/brakefield/painter/ui/GradientSlider;->downY:F

    .line 151
    invoke-direct {p0, p1, p2}, Lcom/brakefield/painter/ui/GradientSlider;->onMove(FF)V

    return-void
.end method

.method private onMove(FF)V
    .locals 6

    .line 155
    iget v0, p0, Lcom/brakefield/painter/ui/GradientSlider;->adjustingIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    iget-object v2, p0, Lcom/brakefield/painter/ui/GradientSlider;->gradient:Lcom/brakefield/painter/nativeobjs/color/GradientNative;

    invoke-virtual {v2, v0}, Lcom/brakefield/painter/nativeobjs/color/GradientNative;->isEndPoint(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 156
    iget-boolean v0, p0, Lcom/brakefield/painter/ui/GradientSlider;->moving:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/brakefield/painter/ui/GradientSlider;->downX:F

    iget v4, p0, Lcom/brakefield/painter/ui/GradientSlider;->downY:F

    invoke-static {p1, p2, v0, v4}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v0

    sget v4, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->TOUCH_SIZE:F

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    cmpl-float v0, v0, v4

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/brakefield/painter/ui/GradientSlider;->moving:Z

    .line 158
    :cond_1
    iget-boolean v0, p0, Lcom/brakefield/painter/ui/GradientSlider;->moving:Z

    if-eqz v0, :cond_5

    .line 159
    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/GradientSlider;->getPositionForX(F)F

    move-result p1

    .line 160
    invoke-static {p1}, Lcom/brakefield/infinitestudio/color/ColorUtils;->clamp(F)F

    move-result p1

    .line 161
    iget-object v0, p0, Lcom/brakefield/painter/ui/GradientSlider;->gradient:Lcom/brakefield/painter/nativeobjs/color/GradientNative;

    iget v4, p0, Lcom/brakefield/painter/ui/GradientSlider;->adjustingIndex:I

    invoke-virtual {v0, v4, p1}, Lcom/brakefield/painter/nativeobjs/color/GradientNative;->adjustColorStop(IF)V

    .line 162
    iget-object p1, p0, Lcom/brakefield/painter/ui/GradientSlider;->listener:Lcom/brakefield/painter/ui/GradientSlider$OnGradientChangedListener;

    invoke-interface {p1}, Lcom/brakefield/painter/ui/GradientSlider$OnGradientChangedListener;->onColorStopUpdated()V

    .line 164
    iget p1, p0, Lcom/brakefield/painter/ui/GradientSlider;->downY:F

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    .line 165
    sget v0, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->TOUCH_SIZE:F

    mul-float/2addr v0, p2

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 167
    :goto_1
    iget-object p1, p0, Lcom/brakefield/painter/ui/GradientSlider;->gradient:Lcom/brakefield/painter/nativeobjs/color/GradientNative;

    iget p2, p0, Lcom/brakefield/painter/ui/GradientSlider;->adjustingIndex:I

    invoke-virtual {p1, p2}, Lcom/brakefield/painter/nativeobjs/color/GradientNative;->isRemoving(I)Z

    move-result p1

    if-eqz v2, :cond_3

    .line 168
    iget-object p2, p0, Lcom/brakefield/painter/ui/GradientSlider;->gradient:Lcom/brakefield/painter/nativeobjs/color/GradientNative;

    iget v0, p0, Lcom/brakefield/painter/ui/GradientSlider;->adjustingIndex:I

    invoke-virtual {p2, v0}, Lcom/brakefield/painter/nativeobjs/color/GradientNative;->setRemovingColorStop(I)V

    goto :goto_2

    .line 169
    :cond_3
    iget-object p2, p0, Lcom/brakefield/painter/ui/GradientSlider;->gradient:Lcom/brakefield/painter/nativeobjs/color/GradientNative;

    invoke-virtual {p2, v1}, Lcom/brakefield/painter/nativeobjs/color/GradientNative;->setRemovingColorStop(I)V

    :goto_2
    if-eq p1, v2, :cond_4

    .line 171
    iget-object p1, p0, Lcom/brakefield/painter/ui/GradientSlider;->listener:Lcom/brakefield/painter/ui/GradientSlider$OnGradientChangedListener;

    invoke-interface {p1}, Lcom/brakefield/painter/ui/GradientSlider$OnGradientChangedListener;->onNumberOfColorStopsChanged()V

    .line 173
    :cond_4
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/GradientSlider;->postInvalidate()V

    :cond_5
    return-void
.end method

.method private onUp(FF)V
    .locals 2

    .line 179
    invoke-direct {p0, p1, p2}, Lcom/brakefield/painter/ui/GradientSlider;->onMove(FF)V

    .line 180
    iget p1, p0, Lcom/brakefield/painter/ui/GradientSlider;->adjustingIndex:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_2

    .line 181
    iget-boolean v0, p0, Lcom/brakefield/painter/ui/GradientSlider;->moving:Z

    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/brakefield/painter/ui/GradientSlider;->added:Z

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/brakefield/painter/ui/GradientSlider;->listener:Lcom/brakefield/painter/ui/GradientSlider$OnGradientChangedListener;

    iget-object v1, p0, Lcom/brakefield/painter/ui/GradientSlider;->gradient:Lcom/brakefield/painter/nativeobjs/color/GradientNative;

    invoke-interface {v0, v1, p1}, Lcom/brakefield/painter/ui/GradientSlider$OnGradientChangedListener;->onColorStopTapped(Lcom/brakefield/painter/nativeobjs/color/GradientNative;I)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/brakefield/painter/ui/GradientSlider;->gradient:Lcom/brakefield/painter/nativeobjs/color/GradientNative;

    invoke-virtual {v0, p1}, Lcom/brakefield/painter/nativeobjs/color/GradientNative;->isRemoving(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 183
    iget-object p1, p0, Lcom/brakefield/painter/ui/GradientSlider;->gradient:Lcom/brakefield/painter/nativeobjs/color/GradientNative;

    iget v0, p0, Lcom/brakefield/painter/ui/GradientSlider;->adjustingIndex:I

    invoke-virtual {p1, v0}, Lcom/brakefield/painter/nativeobjs/color/GradientNative;->removeColorStop(I)V

    .line 184
    iget-object p1, p0, Lcom/brakefield/painter/ui/GradientSlider;->listener:Lcom/brakefield/painter/ui/GradientSlider$OnGradientChangedListener;

    invoke-interface {p1}, Lcom/brakefield/painter/ui/GradientSlider$OnGradientChangedListener;->onNumberOfColorStopsChanged()V

    .line 185
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/GradientSlider;->postInvalidate()V

    .line 186
    iput p2, p0, Lcom/brakefield/painter/ui/GradientSlider;->adjustingIndex:I

    goto :goto_0

    .line 187
    :cond_1
    iput p2, p0, Lcom/brakefield/painter/ui/GradientSlider;->adjustingIndex:I

    .line 189
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/brakefield/painter/ui/GradientSlider;->gradient:Lcom/brakefield/painter/nativeobjs/color/GradientNative;

    invoke-virtual {p1, p2}, Lcom/brakefield/painter/nativeobjs/color/GradientNative;->setRemovingColorStop(I)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    .line 51
    invoke-super/range {p0 .. p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 53
    iget-object v1, v0, Lcom/brakefield/painter/ui/GradientSlider;->gradient:Lcom/brakefield/painter/nativeobjs/color/GradientNative;

    if-nez v1, :cond_0

    return-void

    .line 55
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/brakefield/painter/ui/GradientSlider;->getProgressWidth()F

    move-result v1

    .line 56
    invoke-direct/range {p0 .. p0}, Lcom/brakefield/painter/ui/GradientSlider;->getProgressLeft()F

    move-result v10

    add-float v11, v10, v1

    .line 58
    invoke-direct/range {p0 .. p0}, Lcom/brakefield/painter/ui/GradientSlider;->getCenterY()F

    move-result v12

    .line 60
    iget-object v2, v0, Lcom/brakefield/painter/ui/GradientSlider;->gradient:Lcom/brakefield/painter/nativeobjs/color/GradientNative;

    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Lcom/brakefield/painter/nativeobjs/color/GradientNative;->numberOfColorStops(Z)I

    move-result v14

    .line 62
    new-array v15, v14, [I

    .line 63
    new-array v9, v14, [F

    move v2, v13

    :goto_0
    if-ge v2, v14, :cond_1

    .line 66
    iget-object v3, v0, Lcom/brakefield/painter/ui/GradientSlider;->gradient:Lcom/brakefield/painter/nativeobjs/color/GradientNative;

    invoke-virtual {v3, v2}, Lcom/brakefield/painter/nativeobjs/color/GradientNative;->colorAt(I)I

    move-result v3

    aput v3, v15, v2

    .line 67
    iget-object v3, v0, Lcom/brakefield/painter/ui/GradientSlider;->gradient:Lcom/brakefield/painter/nativeobjs/color/GradientNative;

    invoke-virtual {v3, v2}, Lcom/brakefield/painter/nativeobjs/color/GradientNative;->positionAt(I)F

    move-result v3

    aput v3, v9, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 70
    :cond_1
    iget-object v8, v0, Lcom/brakefield/painter/ui/GradientSlider;->paint:Landroid/graphics/Paint;

    new-instance v7, Landroid/graphics/LinearGradient;

    const/4 v4, 0x0

    const/4 v6, 0x0

    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v2, v7

    move v3, v10

    move v5, v11

    move-object v13, v7

    move-object v7, v15

    move-object/from16 v17, v8

    move-object v8, v9

    move-object/from16 v18, v9

    move-object/from16 v9, v16

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object/from16 v2, v17

    invoke-virtual {v2, v13}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 72
    iget-object v7, v0, Lcom/brakefield/painter/ui/GradientSlider;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    move v4, v12

    move v6, v12

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v14, :cond_2

    .line 75
    aget v2, v15, v13

    .line 76
    aget v3, v18, v13

    .line 77
    invoke-direct {v0, v10, v1, v3}, Lcom/brakefield/painter/ui/GradientSlider;->getXforPosition(FFF)F

    move-result v3

    .line 78
    iget v4, v0, Lcom/brakefield/painter/ui/GradientSlider;->knobSize:F

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    .line 79
    iget-object v5, v0, Lcom/brakefield/painter/ui/GradientSlider;->knob:Lcom/brakefield/infinitestudio/ui/KnobDrawable;

    invoke-virtual {v5, v2}, Lcom/brakefield/infinitestudio/ui/KnobDrawable;->setColor(I)V

    .line 80
    iget-object v2, v0, Lcom/brakefield/painter/ui/GradientSlider;->knob:Lcom/brakefield/infinitestudio/ui/KnobDrawable;

    sub-float v5, v3, v4

    float-to-int v5, v5

    sub-float v6, v12, v4

    float-to-int v6, v6

    add-float/2addr v3, v4

    float-to-int v3, v3

    add-float/2addr v4, v12

    float-to-int v4, v4

    invoke-virtual {v2, v5, v6, v3, v4}, Lcom/brakefield/infinitestudio/ui/KnobDrawable;->setBounds(IIII)V

    .line 81
    iget-object v2, v0, Lcom/brakefield/painter/ui/GradientSlider;->knob:Lcom/brakefield/infinitestudio/ui/KnobDrawable;

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Lcom/brakefield/infinitestudio/ui/KnobDrawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method onCancel()V
    .locals 0

    .line 193
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/GradientSlider;->reset()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 111
    iget-object v0, p0, Lcom/brakefield/painter/ui/GradientSlider;->gradient:Lcom/brakefield/painter/nativeobjs/color/GradientNative;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 113
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 114
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 116
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_4

    if-eq p1, v2, :cond_3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/GradientSlider;->onCancel()V

    goto :goto_0

    .line 118
    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/ui/GradientSlider;->onMove(FF)V

    goto :goto_0

    .line 119
    :cond_3
    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/ui/GradientSlider;->onUp(FF)V

    goto :goto_0

    .line 117
    :cond_4
    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/ui/GradientSlider;->onDown(FF)V

    :goto_0
    return v2
.end method

.method reset()V
    .locals 2

    const/4 v0, 0x0

    .line 197
    iput-boolean v0, p0, Lcom/brakefield/painter/ui/GradientSlider;->moving:Z

    .line 198
    iput-boolean v0, p0, Lcom/brakefield/painter/ui/GradientSlider;->added:Z

    const/4 v0, -0x1

    .line 199
    iput v0, p0, Lcom/brakefield/painter/ui/GradientSlider;->adjustingIndex:I

    .line 200
    iget-object v1, p0, Lcom/brakefield/painter/ui/GradientSlider;->gradient:Lcom/brakefield/painter/nativeobjs/color/GradientNative;

    invoke-virtual {v1, v0}, Lcom/brakefield/painter/nativeobjs/color/GradientNative;->setRemovingColorStop(I)V

    return-void
.end method

.method public setGradient(J)V
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/brakefield/painter/ui/GradientSlider;->gradient:Lcom/brakefield/painter/nativeobjs/color/GradientNative;

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/painter/nativeobjs/color/GradientNative;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 207
    :cond_0
    new-instance v0, Lcom/brakefield/painter/nativeobjs/color/GradientNative;

    invoke-direct {v0, p1, p2}, Lcom/brakefield/painter/nativeobjs/color/GradientNative;-><init>(J)V

    iput-object v0, p0, Lcom/brakefield/painter/ui/GradientSlider;->gradient:Lcom/brakefield/painter/nativeobjs/color/GradientNative;

    .line 209
    :cond_1
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/GradientSlider;->postInvalidate()V

    return-void
.end method

.method public setGradientChangedListener(Lcom/brakefield/painter/ui/GradientSlider$OnGradientChangedListener;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/brakefield/painter/ui/GradientSlider;->listener:Lcom/brakefield/painter/ui/GradientSlider$OnGradientChangedListener;

    return-void
.end method

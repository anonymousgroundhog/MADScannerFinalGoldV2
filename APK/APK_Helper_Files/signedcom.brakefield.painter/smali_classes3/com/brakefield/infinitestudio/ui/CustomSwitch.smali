.class public Lcom/brakefield/infinitestudio/ui/CustomSwitch;
.super Lcom/infinite/app/ui/views/BaseSwitch;
.source "CustomSwitch.java"


# static fields
.field private static final MAX_DISTANCE:F = 200.0f

.field private static final MIN_DISTANCE:F = 20.0f


# instance fields
.field private click:Z

.field private color:I

.field private downX:I

.field private knob:Lcom/brakefield/infinitestudio/ui/KnobDrawable;

.field private knobSize:I

.field private progress:F

.field protected ripple:Lcom/brakefield/infinitestudio/ui/RippleDrawable;

.field private startProgress:F

.field private strokeSize:I

.field private track:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 45
    invoke-direct {p0, p1}, Lcom/infinite/app/ui/views/BaseSwitch;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/brakefield/infinitestudio/R$color;->highlight:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->color:I

    .line 34
    new-instance p1, Lcom/brakefield/infinitestudio/ui/RippleDrawable;

    invoke-direct {p1}, Lcom/brakefield/infinitestudio/ui/RippleDrawable;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->ripple:Lcom/brakefield/infinitestudio/ui/RippleDrawable;

    .line 36
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/brakefield/infinitestudio/R$dimen;->switch_knob_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->knobSize:I

    .line 37
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/brakefield/infinitestudio/R$dimen;->stroke_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->strokeSize:I

    .line 46
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/infinite/app/ui/views/BaseSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/brakefield/infinitestudio/R$color;->highlight:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->color:I

    .line 34
    new-instance p1, Lcom/brakefield/infinitestudio/ui/RippleDrawable;

    invoke-direct {p1}, Lcom/brakefield/infinitestudio/ui/RippleDrawable;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->ripple:Lcom/brakefield/infinitestudio/ui/RippleDrawable;

    .line 36
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/brakefield/infinitestudio/R$dimen;->switch_knob_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->knobSize:I

    .line 37
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/brakefield/infinitestudio/R$dimen;->stroke_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->strokeSize:I

    .line 41
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    .line 51
    new-instance v0, Lcom/brakefield/infinitestudio/ui/KnobDrawable;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v1

    invoke-direct {v0, v1}, Lcom/brakefield/infinitestudio/ui/KnobDrawable;-><init>(F)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->knob:Lcom/brakefield/infinitestudio/ui/KnobDrawable;

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->track:Landroid/graphics/Paint;

    .line 54
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 55
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->track:Landroid/graphics/Paint;

    iget v1, p0, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->strokeSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 56
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->track:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 58
    new-instance v0, Lcom/brakefield/infinitestudio/ui/CustomSwitch$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/brakefield/infinitestudio/ui/CustomSwitch$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/infinitestudio/ui/CustomSwitch;)V

    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method


# virtual methods
.method public animateToggle(Z)V
    .locals 5

    .line 127
    new-instance v0, Landroid/animation/FloatEvaluator;

    invoke-direct {v0}, Landroid/animation/FloatEvaluator;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 129
    iget v1, p0, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->progress:F

    if-eqz p1, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    sub-float/2addr v2, v1

    const-wide/16 v3, 0xc8

    .line 133
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 134
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 135
    new-instance v3, Lcom/brakefield/infinitestudio/ui/CustomSwitch$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v1, v2}, Lcom/brakefield/infinitestudio/ui/CustomSwitch$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/infinitestudio/ui/CustomSwitch;FF)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 140
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 142
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->setChecked(Z)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 73
    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->getWidth()I

    move-result v2

    .line 74
    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->getHeight()I

    move-result v3

    .line 76
    div-int/lit8 v3, v3, 0x2

    .line 77
    iget v4, v0, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->knobSize:I

    int-to-float v4, v4

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    sub-int/2addr v2, v4

    .line 79
    iget v5, v0, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->strokeSize:I

    sub-int/2addr v2, v5

    int-to-float v2, v2

    mul-int/lit8 v6, v4, 0x2

    int-to-float v6, v6

    sub-float v7, v2, v6

    int-to-float v5, v5

    add-float/2addr v7, v5

    sub-float/2addr v2, v7

    .line 83
    iget v5, v0, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->progress:F

    mul-float/2addr v5, v2

    add-float/2addr v5, v7

    int-to-float v3, v3

    .line 86
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getInactiveColor()I

    move-result v8

    .line 88
    invoke-static {v8}, Landroid/graphics/Color;->red(I)I

    move-result v9

    .line 89
    invoke-static {v8}, Landroid/graphics/Color;->green(I)I

    move-result v10

    .line 90
    invoke-static {v8}, Landroid/graphics/Color;->blue(I)I

    move-result v11

    .line 91
    invoke-static {v8}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    .line 93
    iget v12, v0, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->color:I

    invoke-static {v12}, Landroid/graphics/Color;->red(I)I

    move-result v12

    .line 94
    iget v13, v0, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->color:I

    invoke-static {v13}, Landroid/graphics/Color;->green(I)I

    move-result v13

    .line 95
    iget v14, v0, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->color:I

    invoke-static {v14}, Landroid/graphics/Color;->blue(I)I

    move-result v14

    .line 96
    iget v15, v0, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->color:I

    invoke-static {v15}, Landroid/graphics/Color;->alpha(I)I

    move-result v15

    move/from16 v16, v4

    .line 98
    iget v4, v0, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->progress:F

    move/from16 v17, v5

    float-to-double v4, v4

    move/from16 v18, v2

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    int-to-float v2, v8

    sub-int/2addr v15, v8

    int-to-float v4, v15

    mul-float/2addr v4, v1

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v4, v9

    sub-int/2addr v12, v9

    int-to-float v5, v12

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    float-to-int v4, v4

    int-to-float v5, v10

    sub-int/2addr v13, v10

    int-to-float v8, v13

    mul-float/2addr v8, v1

    add-float/2addr v5, v8

    float-to-int v5, v5

    int-to-float v8, v11

    sub-int/2addr v14, v11

    int-to-float v9, v14

    mul-float/2addr v9, v1

    add-float/2addr v8, v9

    float-to-int v1, v8

    .line 100
    invoke-static {v2, v4, v5, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    .line 102
    iget-object v2, v0, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->track:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    iget-object v1, v0, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->track:Landroid/graphics/Paint;

    iget v2, v0, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->knobSize:I

    int-to-float v2, v2

    const v4, 0x3f4ccccd    # 0.8f

    mul-float/2addr v2, v4

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 105
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 106
    invoke-virtual {v1, v7, v3}, Landroid/graphics/Path;->moveTo(FF)V

    add-float v7, v7, v18

    .line 107
    invoke-virtual {v1, v7, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 108
    iget-object v2, v0, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->track:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual {v4, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 110
    iget-object v1, v0, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->ripple:Lcom/brakefield/infinitestudio/ui/RippleDrawable;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->needsRedraw()Z

    move-result v1

    .line 112
    iget-object v2, v0, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->ripple:Lcom/brakefield/infinitestudio/ui/RippleDrawable;

    sub-float v5, v17, v6

    float-to-int v5, v5

    sub-float v7, v3, v6

    float-to-int v7, v7

    add-float v8, v17, v6

    float-to-int v8, v8

    add-float/2addr v6, v3

    float-to-int v6, v6

    invoke-virtual {v2, v5, v7, v8, v6}, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->setBounds(IIII)V

    .line 113
    iget-object v2, v0, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->ripple:Lcom/brakefield/infinitestudio/ui/RippleDrawable;

    invoke-virtual {v2, v4}, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 115
    iget-object v2, v0, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->knob:Lcom/brakefield/infinitestudio/ui/KnobDrawable;

    move/from16 v5, v16

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    sub-float v6, v17, v5

    float-to-int v6, v6

    sub-float v7, v3, v5

    float-to-int v7, v7

    add-float v8, v17, v5

    float-to-int v8, v8

    add-float/2addr v3, v5

    float-to-int v3, v3

    invoke-virtual {v2, v6, v7, v8, v3}, Lcom/brakefield/infinitestudio/ui/KnobDrawable;->setBounds(IIII)V

    .line 116
    iget-object v2, v0, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->knob:Lcom/brakefield/infinitestudio/ui/KnobDrawable;

    invoke-virtual {v2, v4}, Lcom/brakefield/infinitestudio/ui/KnobDrawable;->draw(Landroid/graphics/Canvas;)V

    if-eqz v1, :cond_0

    .line 118
    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->postInvalidate()V

    :cond_0
    return-void
.end method

.method synthetic lambda$animateToggle$1$com-brakefield-infinitestudio-ui-CustomSwitch(FFLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 136
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    mul-float/2addr p2, p3

    add-float/2addr p1, p2

    .line 137
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->progress:F

    .line 138
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->postInvalidate()V

    return-void
.end method

.method synthetic lambda$init$0$com-brakefield-infinitestudio-ui-CustomSwitch(Landroid/view/View;Z)V
    .locals 1

    .line 0
    if-eqz p2, :cond_0

    .line 60
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->ripple:Lcom/brakefield/infinitestudio/ui/RippleDrawable;

    iget-object p2, p0, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->knob:Lcom/brakefield/infinitestudio/ui/KnobDrawable;

    invoke-virtual {p2}, Lcom/brakefield/infinitestudio/ui/KnobDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result p2

    int-to-float p2, p2

    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->knob:Lcom/brakefield/infinitestudio/ui/KnobDrawable;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/KnobDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, p2, v0}, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->setHotspot(FF)V

    .line 61
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->ripple:Lcom/brakefield/infinitestudio/ui/RippleDrawable;

    const p2, 0x10100a7

    filled-new-array {p2}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->setState([I)Z

    .line 62
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->knob:Lcom/brakefield/infinitestudio/ui/KnobDrawable;

    filled-new-array {p2}, [I

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/KnobDrawable;->setState([I)Z

    goto :goto_0

    .line 64
    :cond_0
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->ripple:Lcom/brakefield/infinitestudio/ui/RippleDrawable;

    const/4 p2, 0x0

    new-array v0, p2, [I

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->setState([I)Z

    .line 65
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->knob:Lcom/brakefield/infinitestudio/ui/KnobDrawable;

    new-array p2, p2, [I

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/KnobDrawable;->setState([I)Z

    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 147
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 148
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 150
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_8

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    if-eq p1, v2, :cond_5

    const/4 v4, 0x2

    if-eq p1, v4, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto/16 :goto_2

    .line 183
    :cond_0
    iget p1, p0, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->progress:F

    cmpg-float p1, p1, v1

    if-gez p1, :cond_1

    invoke-virtual {p0, v3}, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->animateToggle(Z)V

    goto :goto_0

    .line 184
    :cond_1
    invoke-virtual {p0, v2}, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->animateToggle(Z)V

    .line 185
    :goto_0
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->knob:Lcom/brakefield/infinitestudio/ui/KnobDrawable;

    new-array v0, v3, [I

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/KnobDrawable;->setState([I)Z

    .line 186
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->ripple:Lcom/brakefield/infinitestudio/ui/RippleDrawable;

    new-array v0, v3, [I

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->setState([I)Z

    goto/16 :goto_2

    .line 162
    :cond_2
    iget p1, p0, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->downX:I

    sub-int v1, v0, p1

    int-to-float v1, v1

    const/high16 v4, 0x43480000    # 200.0f

    div-float/2addr v1, v4

    sub-int/2addr v0, p1

    .line 163
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 164
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->click:Z

    if-eqz v0, :cond_3

    int-to-float p1, p1

    const/high16 v0, 0x41a00000    # 20.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    iput-boolean v3, p0, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->click:Z

    .line 165
    :cond_3
    iget-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->click:Z

    if-nez p1, :cond_9

    .line 166
    iget p1, p0, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->startProgress:F

    add-float/2addr p1, v1

    .line 167
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->progress:F

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_4

    .line 168
    iput v0, p0, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->progress:F

    .line 169
    :cond_4
    iget p1, p0, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->progress:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_9

    iput v0, p0, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->progress:F

    goto :goto_2

    .line 173
    :cond_5
    invoke-virtual {p0, v3}, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->setPressed(Z)V

    .line 174
    iget-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->click:Z

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->isChecked()Z

    move-result p1

    xor-int/2addr p1, v2

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->animateToggle(Z)V

    goto :goto_1

    .line 176
    :cond_6
    iget p1, p0, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->progress:F

    cmpg-float p1, p1, v1

    if-gez p1, :cond_7

    invoke-virtual {p0, v3}, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->animateToggle(Z)V

    goto :goto_1

    .line 177
    :cond_7
    invoke-virtual {p0, v2}, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->animateToggle(Z)V

    .line 179
    :goto_1
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->knob:Lcom/brakefield/infinitestudio/ui/KnobDrawable;

    new-array v0, v3, [I

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/KnobDrawable;->setState([I)Z

    .line 180
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->ripple:Lcom/brakefield/infinitestudio/ui/RippleDrawable;

    new-array v0, v3, [I

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->setState([I)Z

    goto :goto_2

    .line 152
    :cond_8
    invoke-virtual {p0, v2}, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->setPressed(Z)V

    .line 153
    iput-boolean v2, p0, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->click:Z

    .line 154
    iput v0, p0, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->downX:I

    .line 155
    iget p1, p0, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->progress:F

    iput p1, p0, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->startProgress:F

    .line 156
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->knob:Lcom/brakefield/infinitestudio/ui/KnobDrawable;

    const v0, 0x10100a7

    filled-new-array {v0}, [I

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/brakefield/infinitestudio/ui/KnobDrawable;->setState([I)Z

    .line 157
    invoke-virtual {p0, v2}, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->setPressed(Z)V

    .line 158
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->ripple:Lcom/brakefield/infinitestudio/ui/RippleDrawable;

    iget v3, p0, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->downX:I

    int-to-float v3, v3

    int-to-float v1, v1

    invoke-virtual {p1, v3, v1}, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->setHotspot(FF)V

    .line 159
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->ripple:Lcom/brakefield/infinitestudio/ui/RippleDrawable;

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->setState([I)Z

    .line 189
    :cond_9
    :goto_2
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->invalidate()V

    return v2
.end method

.method public setBackgroundColor(I)V
    .locals 0

    .line 122
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->color:I

    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    .line 194
    invoke-super {p0, p1}, Lcom/infinite/app/ui/views/BaseSwitch;->setChecked(Z)V

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 195
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->progress:F

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 196
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->progress:F

    .line 197
    :goto_0
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->postInvalidate()V

    return-void
.end method

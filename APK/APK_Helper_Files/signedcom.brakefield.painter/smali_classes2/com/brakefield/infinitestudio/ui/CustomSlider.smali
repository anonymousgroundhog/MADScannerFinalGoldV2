.class public Lcom/brakefield/infinitestudio/ui/CustomSlider;
.super Lcom/infinite/app/ui/views/BaseSlider;
.source "CustomSlider.java"


# static fields
.field private static MIN_DISTANCE:F = 5.0f


# instance fields
.field private color:I

.field private downX:I

.field private downY:I

.field protected h:I

.field private highlight:Landroid/graphics/Paint;

.field protected knob:Lcom/brakefield/infinitestudio/ui/KnobDrawable;

.field private knobSize:I

.field protected knobX:F

.field protected knobY:F

.field public listener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mid:Z

.field private move:Z

.field private onKnob:Z

.field protected ripple:Lcom/brakefield/infinitestudio/ui/RippleDrawable;

.field protected strokeSize:I

.field private thumb:Landroid/graphics/Paint;

.field private track:Landroid/graphics/Paint;

.field protected w:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 43
    invoke-direct {p0, p1}, Lcom/infinite/app/ui/views/BaseSlider;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/brakefield/infinitestudio/R$color;->highlight:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->color:I

    .line 31
    new-instance p1, Lcom/brakefield/infinitestudio/ui/RippleDrawable;

    invoke-direct {p1}, Lcom/brakefield/infinitestudio/ui/RippleDrawable;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->ripple:Lcom/brakefield/infinitestudio/ui/RippleDrawable;

    const/4 p1, 0x0

    .line 35
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->mid:Z

    .line 39
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/brakefield/infinitestudio/R$dimen;->slider_knob_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->knobSize:I

    .line 40
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/brakefield/infinitestudio/R$dimen;->stroke_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->strokeSize:I

    .line 44
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/infinite/app/ui/views/BaseSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/brakefield/infinitestudio/R$color;->highlight:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->color:I

    .line 31
    new-instance p1, Lcom/brakefield/infinitestudio/ui/RippleDrawable;

    invoke-direct {p1}, Lcom/brakefield/infinitestudio/ui/RippleDrawable;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->ripple:Lcom/brakefield/infinitestudio/ui/RippleDrawable;

    const/4 p1, 0x0

    .line 35
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->mid:Z

    .line 39
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/brakefield/infinitestudio/R$dimen;->slider_knob_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->knobSize:I

    .line 40
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/brakefield/infinitestudio/R$dimen;->stroke_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->strokeSize:I

    .line 49
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/infinite/app/ui/views/BaseSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/brakefield/infinitestudio/R$color;->highlight:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->color:I

    .line 31
    new-instance p1, Lcom/brakefield/infinitestudio/ui/RippleDrawable;

    invoke-direct {p1}, Lcom/brakefield/infinitestudio/ui/RippleDrawable;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->ripple:Lcom/brakefield/infinitestudio/ui/RippleDrawable;

    const/4 p1, 0x0

    .line 35
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->mid:Z

    .line 39
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/brakefield/infinitestudio/R$dimen;->slider_knob_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->knobSize:I

    .line 40
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/brakefield/infinitestudio/R$dimen;->stroke_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->strokeSize:I

    .line 54
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->init()V

    return-void
.end method


# virtual methods
.method public getOnSeekBarChangeListener()Landroid/widget/SeekBar$OnSeekBarChangeListener;
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->listener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-object v0
.end method

.method public getThumbColor()I
    .locals 1

    .line 361
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->color:I

    return v0
.end method

.method public getThumbX()I
    .locals 5

    const/high16 v0, 0x41600000    # 14.0f

    .line 331
    invoke-static {v0}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v0

    float-to-int v0, v0

    .line 333
    iget v1, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->strokeSize:I

    add-int/2addr v1, v0

    int-to-float v0, v1

    .line 334
    iget v1, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->w:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    .line 336
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->getProgress()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->getMax()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 338
    iget v3, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->w:I

    iget v4, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->h:I

    if-le v3, v4, :cond_0

    sub-float/2addr v1, v0

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    .line 339
    :cond_0
    div-int/lit8 v3, v3, 0x2

    return v3
.end method

.method public getThumbY()I
    .locals 5

    const/high16 v0, 0x41600000    # 14.0f

    .line 344
    invoke-static {v0}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v0

    float-to-int v0, v0

    .line 346
    iget v1, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->strokeSize:I

    add-int/2addr v1, v0

    int-to-float v0, v1

    .line 347
    iget v1, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->h:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    .line 349
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->getProgress()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->getMax()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 351
    iget v3, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->w:I

    iget v4, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->h:I

    if-le v3, v4, :cond_0

    div-int/lit8 v4, v4, 0x2

    return v4

    :cond_0
    sub-float/2addr v0, v1

    mul-float/2addr v0, v2

    add-float/2addr v1, v0

    float-to-int v0, v1

    return v0
.end method

.method protected init()V
    .locals 3

    .line 59
    new-instance v0, Lcom/brakefield/infinitestudio/ui/KnobDrawable;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v1

    invoke-direct {v0, v1}, Lcom/brakefield/infinitestudio/ui/KnobDrawable;-><init>(F)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->knob:Lcom/brakefield/infinitestudio/ui/KnobDrawable;

    const/high16 v0, 0x40a00000    # 5.0f

    .line 61
    invoke-static {v0}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v0

    sput v0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->MIN_DISTANCE:F

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->track:Landroid/graphics/Paint;

    .line 64
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 65
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->track:Landroid/graphics/Paint;

    iget v2, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->strokeSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 66
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->track:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 67
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->track:Landroid/graphics/Paint;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getInactiveColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->highlight:Landroid/graphics/Paint;

    const v2, -0x777778

    .line 70
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->highlight:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 72
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->highlight:Landroid/graphics/Paint;

    iget v2, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->strokeSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 73
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->highlight:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 75
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->thumb:Landroid/graphics/Paint;

    .line 76
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->highlight:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 77
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->thumb:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 79
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getActiveColor()I

    move-result v0

    iput v0, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->color:I

    .line 81
    new-instance v0, Lcom/brakefield/infinitestudio/ui/CustomSlider$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/brakefield/infinitestudio/ui/CustomSlider$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/infinitestudio/ui/CustomSlider;)V

    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public isMiddlePivot()Z
    .locals 1

    .line 326
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->mid:Z

    return v0
.end method

.method synthetic lambda$init$0$com-brakefield-infinitestudio-ui-CustomSlider(Landroid/view/View;Z)V
    .locals 1

    .line 0
    if-eqz p2, :cond_0

    .line 83
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->ripple:Lcom/brakefield/infinitestudio/ui/RippleDrawable;

    iget-object p2, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->knob:Lcom/brakefield/infinitestudio/ui/KnobDrawable;

    invoke-virtual {p2}, Lcom/brakefield/infinitestudio/ui/KnobDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result p2

    int-to-float p2, p2

    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->knob:Lcom/brakefield/infinitestudio/ui/KnobDrawable;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/KnobDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, p2, v0}, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->setHotspot(FF)V

    .line 84
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->ripple:Lcom/brakefield/infinitestudio/ui/RippleDrawable;

    const p2, 0x10100a7

    filled-new-array {p2}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->setState([I)Z

    .line 85
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->knob:Lcom/brakefield/infinitestudio/ui/KnobDrawable;

    filled-new-array {p2}, [I

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/KnobDrawable;->setState([I)Z

    goto :goto_0

    .line 87
    :cond_0
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->ripple:Lcom/brakefield/infinitestudio/ui/RippleDrawable;

    const/4 p2, 0x0

    new-array v0, p2, [I

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->setState([I)Z

    .line 88
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->knob:Lcom/brakefield/infinitestudio/ui/KnobDrawable;

    new-array p2, p2, [I

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/KnobDrawable;->setState([I)Z

    :goto_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 95
    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->w:I

    .line 96
    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->h:I

    .line 98
    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->getWidth()I

    move-result v1

    .line 99
    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->getHeight()I

    move-result v2

    .line 101
    div-int/lit8 v8, v1, 0x2

    .line 102
    div-int/lit8 v9, v2, 0x2

    .line 104
    iget v3, v0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->knobSize:I

    int-to-float v10, v3

    int-to-float v4, v1

    sub-float v11, v4, v10

    int-to-float v3, v3

    int-to-float v4, v2

    sub-float v12, v4, v3

    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->getProgress()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->getMax()I

    move-result v5

    int-to-float v5, v5

    div-float v13, v4, v5

    .line 112
    iget-boolean v4, v0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->mid:Z

    const/4 v14, 0x0

    if-eqz v4, :cond_0

    float-to-double v4, v13

    const-wide/high16 v15, 0x3fe0000000000000L    # 0.5

    cmpl-double v4, v4, v15

    if-nez v4, :cond_1

    goto :goto_0

    :cond_0
    cmpl-float v4, v13, v14

    if-nez v4, :cond_1

    :goto_0
    move v4, v14

    goto :goto_1

    :cond_1
    const/high16 v4, 0x3f800000    # 1.0f

    .line 116
    :goto_1
    iget-object v5, v0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->highlight:Landroid/graphics/Paint;

    iget v6, v0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->color:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 117
    iget-object v5, v0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->thumb:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->getThumbColor()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 119
    iget v5, v0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->knobSize:I

    int-to-float v5, v5

    const/high16 v15, 0x3f000000    # 0.5f

    mul-float v16, v5, v15

    const/high16 v5, 0x437f0000    # 255.0f

    if-le v1, v2, :cond_6

    .line 124
    iget-object v1, v0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->thumb:Landroid/graphics/Paint;

    mul-float/2addr v4, v5

    float-to-int v2, v4

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    int-to-float v9, v9

    .line 126
    iput v9, v0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->knobY:F

    sub-float v1, v11, v10

    mul-float/2addr v1, v13

    add-float/2addr v1, v10

    .line 127
    iput v1, v0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->knobX:F

    sub-float v2, v1, v16

    cmpl-float v2, v2, v10

    if-lez v2, :cond_2

    sub-float v4, v1, v16

    .line 130
    iget-object v6, v0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->track:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v10

    move v3, v9

    move v5, v9

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 131
    :cond_2
    iget v1, v0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->knobX:F

    add-float v2, v1, v16

    cmpg-float v2, v2, v11

    if-gez v2, :cond_3

    add-float v2, v1, v16

    .line 132
    iget-object v6, v0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->track:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v9

    move v4, v11

    move v5, v9

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 134
    :cond_3
    iget-boolean v1, v0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->mid:Z

    if-eqz v1, :cond_5

    cmpg-float v1, v13, v15

    if-gez v1, :cond_4

    .line 135
    iget v1, v0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->knobX:F

    add-float v2, v1, v16

    int-to-float v4, v8

    cmpg-float v2, v2, v4

    if-gez v2, :cond_4

    add-float v2, v1, v16

    .line 136
    iget-object v6, v0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->highlight:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v9

    move v5, v9

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    :cond_4
    cmpl-float v1, v13, v14

    if-lez v1, :cond_b

    .line 137
    iget v1, v0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->knobX:F

    sub-float v2, v1, v16

    int-to-float v3, v8

    cmpl-float v2, v2, v3

    if-lez v2, :cond_b

    sub-float v4, v1, v16

    .line 138
    iget-object v6, v0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->highlight:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v3

    move v3, v9

    move v5, v9

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 140
    :cond_5
    iget v1, v0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->knobX:F

    sub-float v2, v1, v16

    cmpl-float v2, v2, v10

    if-lez v2, :cond_b

    sub-float v4, v1, v16

    .line 141
    iget-object v6, v0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->highlight:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v10

    move v3, v9

    move v5, v9

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 145
    :cond_6
    iget-object v1, v0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->thumb:Landroid/graphics/Paint;

    mul-float/2addr v4, v5

    float-to-int v2, v4

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    int-to-float v8, v8

    .line 147
    iput v8, v0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->knobX:F

    sub-float v1, v3, v12

    mul-float/2addr v1, v13

    add-float/2addr v1, v12

    .line 148
    iput v1, v0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->knobY:F

    sub-float v2, v1, v16

    cmpl-float v2, v2, v3

    if-lez v2, :cond_7

    sub-float v5, v1, v16

    .line 151
    iget-object v6, v0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->track:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v8

    move v4, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 152
    :cond_7
    iget v1, v0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->knobY:F

    add-float v2, v1, v16

    cmpg-float v2, v2, v12

    if-gez v2, :cond_8

    add-float v3, v1, v16

    .line 153
    iget-object v6, v0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->track:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v8

    move v4, v8

    move v5, v12

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 155
    :cond_8
    iget-boolean v1, v0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->mid:Z

    if-eqz v1, :cond_a

    cmpg-float v1, v13, v15

    if-gez v1, :cond_9

    .line 156
    iget v1, v0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->knobY:F

    add-float v2, v1, v16

    int-to-float v5, v9

    cmpg-float v2, v2, v5

    if-gez v2, :cond_9

    add-float v3, v1, v16

    .line 157
    iget-object v6, v0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->highlight:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v8

    move v4, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_9
    cmpl-float v1, v13, v14

    if-lez v1, :cond_b

    .line 158
    iget v1, v0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->knobY:F

    sub-float v2, v1, v16

    int-to-float v3, v9

    cmpl-float v2, v2, v3

    if-lez v2, :cond_b

    sub-float v5, v1, v16

    .line 159
    iget-object v6, v0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->highlight:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v8

    move v4, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 161
    :cond_a
    iget v1, v0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->knobY:F

    add-float v2, v1, v16

    cmpg-float v2, v2, v12

    if-gez v2, :cond_b

    add-float v5, v1, v16

    .line 162
    iget-object v6, v0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->highlight:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v8

    move v3, v12

    move v4, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 165
    :cond_b
    :goto_2
    iget-object v1, v0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->ripple:Lcom/brakefield/infinitestudio/ui/RippleDrawable;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->needsRedraw()Z

    move-result v1

    .line 167
    iget-object v2, v0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->ripple:Lcom/brakefield/infinitestudio/ui/RippleDrawable;

    iget v3, v0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->knobX:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v16, v16, v4

    sub-float v4, v3, v16

    float-to-int v4, v4

    iget v5, v0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->knobY:F

    sub-float v6, v5, v16

    float-to-int v6, v6

    add-float v3, v3, v16

    float-to-int v3, v3

    add-float v5, v5, v16

    float-to-int v5, v5

    invoke-virtual {v2, v4, v6, v3, v5}, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->setBounds(IIII)V

    .line 169
    iget-object v2, v0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->ripple:Lcom/brakefield/infinitestudio/ui/RippleDrawable;

    invoke-virtual {v2, v7}, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 171
    iget-object v2, v0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->knob:Lcom/brakefield/infinitestudio/ui/KnobDrawable;

    iget v3, v0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->knobX:F

    sub-float v4, v3, v16

    float-to-int v4, v4

    iget v5, v0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->knobY:F

    sub-float v6, v5, v16

    float-to-int v6, v6

    add-float v3, v3, v16

    float-to-int v3, v3

    add-float v5, v5, v16

    float-to-int v5, v5

    invoke-virtual {v2, v4, v6, v3, v5}, Lcom/brakefield/infinitestudio/ui/KnobDrawable;->setBounds(IIII)V

    .line 173
    iget-object v2, v0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->knob:Lcom/brakefield/infinitestudio/ui/KnobDrawable;

    invoke-virtual {v2, v7}, Lcom/brakefield/infinitestudio/ui/KnobDrawable;->draw(Landroid/graphics/Canvas;)V

    if-eqz v1, :cond_c

    .line 176
    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->postInvalidate()V

    :cond_c
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 189
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 190
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 192
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    if-eq p1, v2, :cond_8

    const/4 v6, 0x2

    if-eq p1, v6, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto/16 :goto_5

    .line 295
    :cond_0
    invoke-virtual {p0, v3}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->setPressed(Z)V

    .line 297
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 299
    iput-boolean v3, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->move:Z

    .line 301
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->ripple:Lcom/brakefield/infinitestudio/ui/RippleDrawable;

    new-array v0, v3, [I

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->setState([I)Z

    .line 302
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->knob:Lcom/brakefield/infinitestudio/ui/KnobDrawable;

    new-array v0, v3, [I

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/KnobDrawable;->setState([I)Z

    .line 304
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->listener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz p1, :cond_12

    .line 305
    invoke-interface {p1, p0}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    goto/16 :goto_5

    .line 216
    :cond_1
    iget p1, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->w:I

    iget v3, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->h:I

    if-le p1, v3, :cond_2

    iget p1, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->downX:I

    sub-int p1, v0, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    sget v3, Lcom/brakefield/infinitestudio/ui/CustomSlider;->MIN_DISTANCE:F

    cmpl-float p1, p1, v3

    if-gtz p1, :cond_3

    :cond_2
    iget p1, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->h:I

    iget v3, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->w:I

    if-le p1, v3, :cond_4

    iget p1, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->downY:I

    sub-int p1, v1, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    sget v3, Lcom/brakefield/infinitestudio/ui/CustomSlider;->MIN_DISTANCE:F

    cmpl-float p1, p1, v3

    if-lez p1, :cond_4

    .line 217
    :cond_3
    iput-boolean v2, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->move:Z

    .line 218
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 221
    :cond_4
    iget-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->move:Z

    if-eqz p1, :cond_12

    iget-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->onKnob:Z

    if-eqz p1, :cond_12

    .line 222
    iget p1, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->knobSize:I

    int-to-float v3, p1

    .line 223
    iget v6, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->w:I

    int-to-float v7, v6

    sub-float/2addr v7, v3

    int-to-float p1, p1

    .line 225
    iget v8, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->h:I

    int-to-float v9, v8

    sub-float/2addr v9, p1

    int-to-float v0, v0

    sub-float/2addr v0, v3

    sub-float/2addr v7, v3

    div-float/2addr v0, v7

    int-to-float v1, v1

    sub-float/2addr v1, v9

    sub-float/2addr p1, v9

    div-float/2addr v1, p1

    if-le v8, v6, :cond_5

    move v0, v1

    :cond_5
    cmpg-float p1, v0, v4

    if-gez p1, :cond_6

    goto :goto_0

    :cond_6
    move v4, v0

    :goto_0
    cmpl-float p1, v4, v5

    if-lez p1, :cond_7

    goto :goto_1

    :cond_7
    move v5, v4

    .line 239
    :goto_1
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->getMax()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr v5, p1

    float-to-int p1, v5

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->setProgress(I)V

    .line 241
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->listener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz p1, :cond_12

    .line 242
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->getProgress()I

    move-result v0

    invoke-interface {p1, p0, v0, v2}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    goto/16 :goto_5

    .line 247
    :cond_8
    invoke-virtual {p0, v3}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->setPressed(Z)V

    .line 249
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 251
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->ripple:Lcom/brakefield/infinitestudio/ui/RippleDrawable;

    new-array v6, v3, [I

    invoke-virtual {p1, v6}, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->setState([I)Z

    .line 252
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->knob:Lcom/brakefield/infinitestudio/ui/KnobDrawable;

    new-array v3, v3, [I

    invoke-virtual {p1, v3}, Lcom/brakefield/infinitestudio/ui/KnobDrawable;->setState([I)Z

    .line 254
    iget-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->move:Z

    if-nez p1, :cond_e

    .line 256
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->getProgress()I

    move-result p1

    int-to-float p1, p1

    .line 257
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->getMax()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p1, v3

    .line 258
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->getMax()I

    move-result v3

    int-to-float v3, v3

    div-float v3, v5, v3

    .line 260
    iget v6, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->knobSize:I

    int-to-float v7, v6

    .line 261
    iget v8, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->w:I

    int-to-float v9, v8

    sub-float/2addr v9, v7

    int-to-float v6, v6

    .line 263
    iget v10, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->h:I

    int-to-float v11, v10

    sub-float/2addr v11, v6

    int-to-float v0, v0

    sub-float/2addr v0, v7

    sub-float/2addr v9, v7

    div-float/2addr v0, v9

    int-to-float v1, v1

    sub-float/2addr v1, v11

    sub-float/2addr v6, v11

    div-float/2addr v1, v6

    if-le v10, v8, :cond_9

    move v0, v1

    :cond_9
    cmpg-float v1, v0, p1

    if-gez v1, :cond_a

    sub-float v0, p1, v3

    goto :goto_2

    :cond_a
    cmpl-float v1, v0, p1

    if-lez v1, :cond_b

    const v0, 0x3f8ccccd    # 1.1f

    mul-float/2addr v3, v0

    add-float v0, p1, v3

    :cond_b
    :goto_2
    cmpg-float p1, v0, v4

    if-gez p1, :cond_c

    goto :goto_3

    :cond_c
    move v4, v0

    :goto_3
    cmpl-float p1, v4, v5

    if-lez p1, :cond_d

    goto :goto_4

    :cond_d
    move v5, v4

    .line 278
    :goto_4
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->getMax()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr v5, p1

    float-to-int p1, v5

    .line 280
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->setProgress(I)V

    .line 282
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->listener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz p1, :cond_e

    .line 283
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->getProgress()I

    move-result v0

    invoke-interface {p1, p0, v0, v2}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 287
    :cond_e
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->listener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz p1, :cond_12

    .line 288
    invoke-interface {p1, p0}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    goto :goto_5

    .line 195
    :cond_f
    iput-boolean v3, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->move:Z

    .line 197
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->listener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz p1, :cond_10

    .line 198
    invoke-interface {p1, p0}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    .line 201
    :cond_10
    iput v0, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->downX:I

    .line 202
    iput v1, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->downY:I

    .line 204
    iget p1, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->knobX:F

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sget v0, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->TOUCH_SIZE:F

    const v1, 0x3fb33333    # 1.4f

    mul-float/2addr v0, v1

    cmpg-float p1, p1, v0

    if-gez p1, :cond_11

    iget p1, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->knobY:F

    iget v0, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->downY:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sget v0, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->TOUCH_SIZE:F

    mul-float/2addr v0, v1

    cmpg-float p1, p1, v0

    if-gez p1, :cond_11

    move v3, v2

    :cond_11
    iput-boolean v3, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->onKnob:Z

    if-eqz v3, :cond_12

    .line 207
    invoke-virtual {p0, v2}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->setPressed(Z)V

    .line 208
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->ripple:Lcom/brakefield/infinitestudio/ui/RippleDrawable;

    iget v0, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->downX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->downY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->setHotspot(FF)V

    .line 209
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->ripple:Lcom/brakefield/infinitestudio/ui/RippleDrawable;

    const v0, 0x10100a7

    filled-new-array {v0}, [I

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->setState([I)Z

    .line 210
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->knob:Lcom/brakefield/infinitestudio/ui/KnobDrawable;

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/KnobDrawable;->setState([I)Z

    .line 311
    :cond_12
    :goto_5
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->invalidate()V

    return v2
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 181
    invoke-super {p0, p1}, Lcom/infinite/app/ui/views/BaseSlider;->onWindowFocusChanged(Z)V

    .line 182
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->w:I

    .line 183
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->h:I

    .line 184
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->invalidate()V

    return-void
.end method

.method public setMiddlePivot(Z)V
    .locals 0

    .line 321
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->mid:Z

    .line 322
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->postInvalidate()V

    return-void
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 0

    .line 316
    invoke-super {p0, p1}, Lcom/infinite/app/ui/views/BaseSlider;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 317
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->listener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method public setShader(Landroid/graphics/Shader;)V
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->track:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 357
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/CustomSlider;->highlight:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

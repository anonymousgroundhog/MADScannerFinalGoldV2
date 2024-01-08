.class public Lcom/brakefield/infinitestudio/ui/PullButton;
.super Lcom/brakefield/infinitestudio/ui/CustomSlider;
.source "PullButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/ui/PullButton$OnOutListener;
    }
.end annotation


# static fields
.field private static final FREE:I = 0x3

.field private static final HORIZONTAL:I = 0x1

.field private static final SWEEP:I = 0x2

.field private static final VERTICAL:I


# instance fields
.field private final MIN_DISTANCE:F

.field private final MIN_SCALE:F

.field private active:Z

.field private animator:Landroid/animation/ValueAnimator;

.field private arrow:Landroid/graphics/Path;

.field private arrowPaint:Landroid/graphics/Paint;

.field private backPaint:Landroid/graphics/Paint;

.field private click:Z

.field private clickListener:Landroid/view/View$OnClickListener;

.field private downAngle:F

.field private downX:I

.field private downY:I

.field private drawText:Z

.field private fadePaint:Landroid/graphics/Paint;

.field private fadePaint2:Landroid/graphics/Paint;

.field private h:I

.field private horizontalable:Z

.field private listener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mod:Z

.field private notActivePaint:Landroid/graphics/Paint;

.field private out:Z

.field private outListener:Lcom/brakefield/infinitestudio/ui/PullButton$OnOutListener;

.field private paint:Landroid/graphics/Paint;

.field private prevAngle:F

.field public previousX:I

.field public previousY:I

.field private pullCase:I

.field scaleValue:F

.field private startProgress:I

.field private sweepAngle:F

.field private sweepRadius:F

.field private sweepRange:F

.field private sweepable:Z

.field private textPaint:Landroid/graphics/Paint;

.field private toggable:Z

.field trackColor:I

.field private trackPaint:Landroid/graphics/Paint;

.field private verticalable:Z

.field private w:I

.field private winding:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 96
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/ui/CustomSlider;-><init>(Landroid/content/Context;)V

    const p1, 0x3f4ccccd    # 0.8f

    .line 36
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->MIN_SCALE:F

    const/high16 v0, 0x42200000    # 40.0f

    .line 38
    invoke-static {v0}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v0

    iput v0, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->MIN_DISTANCE:F

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->mod:Z

    .line 48
    iput v0, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->pullCase:I

    const/4 v1, 0x1

    .line 71
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->active:Z

    .line 76
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->toggable:Z

    .line 77
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->verticalable:Z

    .line 78
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->horizontalable:Z

    .line 79
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->sweepable:Z

    const v0, -0x777778

    .line 88
    iput v0, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->trackColor:I

    .line 90
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->scaleValue:F

    .line 93
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->drawText:Z

    .line 97
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/PullButton;->setupListeners()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/brakefield/infinitestudio/ui/CustomSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x3f4ccccd    # 0.8f

    .line 36
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->MIN_SCALE:F

    const/high16 p2, 0x42200000    # 40.0f

    .line 38
    invoke-static {p2}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result p2

    iput p2, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->MIN_DISTANCE:F

    const/4 p2, 0x0

    .line 46
    iput-boolean p2, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->mod:Z

    .line 48
    iput p2, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->pullCase:I

    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->active:Z

    .line 76
    iput-boolean p2, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->toggable:Z

    .line 77
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->verticalable:Z

    .line 78
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->horizontalable:Z

    .line 79
    iput-boolean p2, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->sweepable:Z

    const p2, -0x777778

    .line 88
    iput p2, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->trackColor:I

    .line 90
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->scaleValue:F

    .line 93
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->drawText:Z

    .line 102
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/PullButton;->setupListeners()V

    return-void
.end method

.method static synthetic access$002(Lcom/brakefield/infinitestudio/ui/PullButton;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->animator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method private getAppropriatePointerIcon()Landroid/view/PointerIcon;
    .locals 2

    .line 541
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/PullButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x3ea

    invoke-static {v0, v1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0
.end method

.method private static getDifferenceAngle(DD)F
    .locals 2

    sub-double/2addr p2, p0

    :goto_0
    const-wide p0, -0x3f99800000000000L    # -180.0

    cmpg-double p0, p2, p0

    const-wide v0, 0x4076800000000000L    # 360.0

    if-gez p0, :cond_0

    add-double/2addr p2, v0

    goto :goto_0

    :cond_0
    :goto_1
    const-wide p0, 0x4066800000000000L    # 180.0

    cmpl-double p0, p2, p0

    if-lez p0, :cond_1

    sub-double/2addr p2, v0

    goto :goto_1

    :cond_1
    double-to-float p0, p2

    return p0
.end method

.method private setupListeners()V
    .locals 1

    .line 107
    new-instance v0, Lcom/brakefield/infinitestudio/ui/PullButton$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/brakefield/infinitestudio/ui/PullButton$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/infinitestudio/ui/PullButton;)V

    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/ui/PullButton;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 115
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/PullButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/PullButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/ui/PullButton;->setTooltipText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getOnSeekBarChangeListener()Landroid/widget/SeekBar$OnSeekBarChangeListener;
    .locals 1

    .line 455
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->listener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-object v0
.end method

.method public getThumbX()I
    .locals 1

    .line 483
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->previousX:I

    return v0
.end method

.method public getThumbY()I
    .locals 2

    const/high16 v0, 0x41600000    # 14.0f

    .line 487
    invoke-static {v0}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v0

    float-to-int v0, v0

    .line 488
    iget v1, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->previousY:I

    sub-int/2addr v1, v0

    return v1
.end method

.method protected init()V
    .locals 10

    .line 168
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/PullButton;->getResources()Landroid/content/res/Resources;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 169
    invoke-static {v0}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    .line 170
    invoke-static {v1}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v2

    .line 172
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->textPaint:Landroid/graphics/Paint;

    .line 173
    iget v5, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->trackColor:I

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 174
    iget-object v3, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->textPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 175
    iget-object v3, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->textPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 177
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->arrowPaint:Landroid/graphics/Paint;

    const/16 v5, 0x14

    .line 178
    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 180
    iget v3, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->w:I

    div-int/lit8 v3, v3, 0x12

    int-to-float v3, v3

    .line 182
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v6, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->arrow:Landroid/graphics/Path;

    neg-float v7, v3

    div-float v8, v7, v1

    .line 183
    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 184
    iget-object v6, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->arrow:Landroid/graphics/Path;

    div-float v7, v3, v1

    const/4 v9, 0x0

    invoke-virtual {v6, v9, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 185
    iget-object v6, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->arrow:Landroid/graphics/Path;

    invoke-virtual {v6, v3, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 186
    iget-object v3, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->arrow:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 188
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->backPaint:Landroid/graphics/Paint;

    const v6, -0x777778

    .line 189
    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 190
    iget-object v3, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->backPaint:Landroid/graphics/Paint;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 192
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->notActivePaint:Landroid/graphics/Paint;

    .line 193
    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 194
    iget-object v3, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->notActivePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 195
    iget-object v3, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->notActivePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 197
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->fadePaint:Landroid/graphics/Paint;

    .line 198
    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 199
    iget-object v3, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->fadePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 200
    iget-object v3, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->fadePaint:Landroid/graphics/Paint;

    iget v7, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->trackColor:I

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 202
    new-instance v3, Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->fadePaint:Landroid/graphics/Paint;

    invoke-direct {v3, v7}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v3, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->fadePaint2:Landroid/graphics/Paint;

    const/16 v7, 0x28

    .line 203
    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 205
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->trackPaint:Landroid/graphics/Paint;

    .line 206
    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 207
    iget-object v3, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->trackPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 208
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->trackPaint:Landroid/graphics/Paint;

    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 210
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->paint:Landroid/graphics/Paint;

    .line 211
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 212
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 213
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 214
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v9, v9, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    return-void
.end method

.method synthetic lambda$setScaleValue$1$com-brakefield-infinitestudio-ui-PullButton(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 505
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->scaleValue:F

    .line 506
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/PullButton;->postInvalidate()V

    return-void
.end method

.method synthetic lambda$setupListeners$0$com-brakefield-infinitestudio-ui-PullButton(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 108
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/16 p2, 0x9

    if-ne p1, p2, :cond_0

    .line 109
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/PullButton;->getAppropriatePointerIcon()Landroid/view/PointerIcon;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/PullButton;->setPointerIcon(Landroid/view/PointerIcon;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 124
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/PullButton;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->w:I

    .line 125
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/PullButton;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->h:I

    .line 127
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->paint:Landroid/graphics/Paint;

    if-nez v1, :cond_1

    .line 128
    iget v1, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->w:I

    if-lez v1, :cond_0

    if-lez v0, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/PullButton;->init()V

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x32

    .line 131
    invoke-virtual {p0, v0, v1}, Lcom/brakefield/infinitestudio/ui/PullButton;->postInvalidateDelayed(J)V

    return-void

    .line 136
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/PullButton;->getProgress()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/PullButton;->getMax()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 138
    iget v1, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->w:I

    iget v2, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->h:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 139
    iput v1, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->w:I

    .line 140
    iput v1, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->h:I

    .line 142
    div-int/lit8 v2, v1, 0x2

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/PullButton;->getPaddingLeft()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 144
    iget v3, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->scaleValue:F

    mul-float/2addr v2, v3

    .line 146
    new-instance v4, Landroid/graphics/RectF;

    iget v3, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->w:I

    div-int/lit8 v5, v3, 0x2

    int-to-float v5, v5

    sub-float/2addr v5, v2

    iget v6, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->h:I

    div-int/lit8 v7, v6, 0x2

    int-to-float v7, v7

    sub-float/2addr v7, v2

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v3, v2

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v6, v2

    invoke-direct {v4, v5, v7, v3, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 148
    iget-object v2, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->backPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 149
    iget-object v2, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->fadePaint2:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    const/high16 v2, 0x43340000    # 180.0f

    mul-float/2addr v2, v0

    const/high16 v3, 0x42b40000    # 90.0f

    add-float v5, v2, v3

    neg-float v0, v0

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float v6, v0, v2

    const/4 v7, 0x0

    .line 150
    iget-object v8, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->fadePaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 152
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->drawText:Z

    if-eqz v0, :cond_4

    .line 153
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->active:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->textPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_1

    .line 154
    :cond_2
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->textPaint:Landroid/graphics/Paint;

    const/16 v2, 0x32

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 156
    :goto_1
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->textPaint:Landroid/graphics/Paint;

    int-to-float v1, v1

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->scaleValue:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 158
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/PullButton;->getProgress()I

    move-result v0

    .line 159
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/PullButton;->isMiddlePivot()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/PullButton;->getMax()I

    move-result v1

    sub-int/2addr v0, v1

    .line 160
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->w:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->h:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    move-result v3

    iget-object v4, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_4
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 227
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 228
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 230
    iput v0, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->previousX:I

    .line 231
    iput v1, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->previousY:I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 234
    invoke-virtual {p0, v3}, Lcom/brakefield/infinitestudio/ui/PullButton;->getLocationInWindow([I)V

    .line 236
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    const/4 v5, 0x0

    aget v6, v3, v5

    int-to-float v6, v6

    add-float/2addr v4, v6

    float-to-int v4, v4

    .line 237
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    const/4 v7, 0x1

    aget v3, v3, v7

    int-to-float v3, v3

    add-float/2addr v6, v3

    float-to-int v3, v6

    .line 239
    new-instance v6, Lcom/brakefield/infinitestudio/geometry/Line;

    iget v8, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->downX:I

    int-to-float v8, v8

    iget v9, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->downY:I

    int-to-float v9, v9

    int-to-float v10, v0

    int-to-float v11, v1

    invoke-direct {v6, v8, v9, v10, v11}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(FFFF)V

    .line 243
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_19

    const/4 v8, 0x3

    if-eq p1, v7, :cond_15

    if-eq p1, v2, :cond_3

    if-eq p1, v8, :cond_0

    goto/16 :goto_6

    .line 422
    :cond_0
    invoke-virtual {p0, v5}, Lcom/brakefield/infinitestudio/ui/PullButton;->setPressed(Z)V

    .line 424
    iget p1, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->pullCase:I

    if-ne p1, v8, :cond_1

    .line 425
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->outListener:Lcom/brakefield/infinitestudio/ui/PullButton$OnOutListener;

    invoke-interface {p1}, Lcom/brakefield/infinitestudio/ui/PullButton$OnOutListener;->onOutEnded()V

    goto :goto_0

    .line 426
    :cond_1
    iget-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->active:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->listener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz p1, :cond_2

    .line 427
    invoke-interface {p1, p0}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    .line 430
    :cond_2
    :goto_0
    iput-boolean v5, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->out:Z

    goto/16 :goto_6

    .line 255
    :cond_3
    iget p1, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->downY:I

    sub-int/2addr p1, v1

    .line 256
    iget v9, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->downX:I

    sub-int v9, v0, v9

    .line 258
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/PullButton;->getMax()I

    move-result v10

    mul-int/2addr v9, v10

    int-to-float v9, v9

    const/high16 v10, 0x42c80000    # 100.0f

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-int v9, v9

    .line 259
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/PullButton;->getMax()I

    move-result v11

    mul-int/2addr p1, v11

    int-to-float p1, p1

    div-float/2addr p1, v10

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-int p1, p1

    .line 261
    iget-boolean v10, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->out:Z

    if-nez v10, :cond_9

    int-to-float v9, v9

    .line 263
    iget v10, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->MIN_DISTANCE:F

    cmpl-float v11, v9, v10

    if-gtz v11, :cond_4

    int-to-float v11, p1

    cmpl-float v10, v11, v10

    if-lez v10, :cond_9

    .line 264
    :cond_4
    invoke-virtual {v6}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v10

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v10

    double-to-float v10, v10

    .line 266
    iput v10, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->downAngle:F

    .line 268
    iput-boolean v5, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->click:Z

    .line 270
    iget-boolean v10, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->sweepable:Z

    if-eqz v10, :cond_5

    .line 271
    iput v2, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->pullCase:I

    .line 272
    iput-boolean v7, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->out:Z

    goto :goto_1

    .line 273
    :cond_5
    iget-boolean v10, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->horizontalable:Z

    if-eqz v10, :cond_6

    iget v10, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->MIN_DISTANCE:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_6

    .line 274
    iput v7, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->pullCase:I

    .line 275
    iput-boolean v7, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->out:Z

    .line 276
    iput v0, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->downX:I

    .line 277
    iput v1, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->downY:I

    goto :goto_1

    .line 278
    :cond_6
    iget-boolean v9, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->verticalable:Z

    if-eqz v9, :cond_7

    int-to-float p1, p1

    iget v9, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->MIN_DISTANCE:F

    cmpl-float p1, p1, v9

    if-lez p1, :cond_7

    .line 279
    iput v5, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->pullCase:I

    .line 280
    iput v0, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->downX:I

    .line 281
    iput v1, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->downY:I

    .line 282
    iput-boolean v7, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->out:Z

    goto :goto_1

    .line 283
    :cond_7
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->outListener:Lcom/brakefield/infinitestudio/ui/PullButton$OnOutListener;

    if-eqz p1, :cond_8

    .line 284
    iput v8, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->pullCase:I

    .line 285
    iput-boolean v7, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->out:Z

    int-to-float v9, v4

    int-to-float v10, v3

    .line 286
    invoke-interface {p1, v9, v10}, Lcom/brakefield/infinitestudio/ui/PullButton$OnOutListener;->onOutStarted(FF)V

    .line 289
    :cond_8
    :goto_1
    iget-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->active:Z

    if-eqz p1, :cond_9

    iget p1, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->pullCase:I

    if-eq p1, v8, :cond_9

    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->listener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz p1, :cond_9

    .line 290
    invoke-interface {p1, p0}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    .line 295
    :cond_9
    iget-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->active:Z

    if-eqz p1, :cond_1a

    .line 297
    iget-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->out:Z

    if-eqz p1, :cond_1a

    .line 299
    iget p1, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->downY:I

    sub-int/2addr p1, v1

    .line 300
    iget v1, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->downX:I

    sub-int/2addr v0, v1

    .line 335
    iget v1, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->pullCase:I

    if-ne v1, v8, :cond_a

    .line 336
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->outListener:Lcom/brakefield/infinitestudio/ui/PullButton$OnOutListener;

    int-to-float v0, v4

    int-to-float v1, v3

    invoke-interface {p1, v0, v1}, Lcom/brakefield/infinitestudio/ui/PullButton$OnOutListener;->onOutMove(FF)V

    goto/16 :goto_6

    .line 339
    :cond_a
    iget v9, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->startProgress:I

    if-ne v1, v2, :cond_e

    .line 343
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->outListener:Lcom/brakefield/infinitestudio/ui/PullButton$OnOutListener;

    if-eqz p1, :cond_c

    .line 344
    invoke-virtual {v6}, Lcom/brakefield/infinitestudio/geometry/Line;->getLength()F

    move-result p1

    iget v0, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->sweepRadius:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_c

    .line 345
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->listener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz p1, :cond_b

    .line 346
    invoke-interface {p1, p0}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    .line 348
    :cond_b
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->outListener:Lcom/brakefield/infinitestudio/ui/PullButton$OnOutListener;

    int-to-float v0, v4

    int-to-float v1, v3

    invoke-interface {p1, v0, v1}, Lcom/brakefield/infinitestudio/ui/PullButton$OnOutListener;->onOutStarted(FF)V

    .line 349
    iput v8, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->pullCase:I

    goto :goto_2

    .line 352
    :cond_c
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/PullButton;->getMax()I

    move-result p1

    div-int/2addr p1, v2

    .line 354
    invoke-virtual {v6}, Lcom/brakefield/infinitestudio/geometry/Line;->getAngle()F

    move-result v0

    .line 356
    iget v1, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->sweepAngle:F

    float-to-double v1, v1

    float-to-double v3, v0

    .line 357
    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    double-to-float v0, v3

    float-to-double v3, v0

    .line 356
    invoke-static {v1, v2, v3, v4}, Lcom/brakefield/infinitestudio/ui/PullButton;->getDifferenceAngle(DD)F

    move-result v0

    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v2, v0, v1

    if-lez v2, :cond_d

    const/high16 v2, 0x43b40000    # 360.0f

    sub-float v0, v2, v0

    :cond_d
    int-to-float p1, p1

    .line 362
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/PullButton;->getMax()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->sweepRange:F

    mul-float/2addr v2, v1

    div-float/2addr v0, v2

    add-float/2addr p1, v0

    float-to-int v9, p1

    goto :goto_2

    :cond_e
    if-nez v1, :cond_f

    .line 371
    div-int/lit8 p1, p1, 0x5

    add-int/2addr v9, p1

    goto :goto_2

    :cond_f
    if-ne v1, v7, :cond_10

    .line 378
    div-int/lit8 v0, v0, 0x5

    add-int/2addr v9, v0

    :cond_10
    :goto_2
    if-gez v9, :cond_11

    .line 383
    iget-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->mod:Z

    if-eqz p1, :cond_12

    .line 384
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/PullButton;->getMax()I

    move-result v0

    rem-int v5, p1, v0

    goto :goto_3

    :cond_11
    move v5, v9

    .line 387
    :cond_12
    :goto_3
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/PullButton;->getMax()I

    move-result p1

    if-le v5, p1, :cond_14

    .line 388
    iget-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->mod:Z

    if-eqz p1, :cond_13

    .line 389
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/PullButton;->getMax()I

    move-result v0

    rem-int v5, p1, v0

    goto :goto_4

    .line 391
    :cond_13
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/PullButton;->getMax()I

    move-result v5

    .line 393
    :cond_14
    :goto_4
    invoke-virtual {p0, v5}, Lcom/brakefield/infinitestudio/ui/PullButton;->setProgress(I)V

    .line 394
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->listener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz p1, :cond_1a

    .line 395
    invoke-interface {p1, p0, v5, v7}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    goto :goto_6

    .line 403
    :cond_15
    invoke-virtual {p0, v5}, Lcom/brakefield/infinitestudio/ui/PullButton;->setPressed(Z)V

    .line 405
    iget p1, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->pullCase:I

    if-ne p1, v8, :cond_16

    .line 406
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->outListener:Lcom/brakefield/infinitestudio/ui/PullButton$OnOutListener;

    invoke-interface {p1}, Lcom/brakefield/infinitestudio/ui/PullButton$OnOutListener;->onOutEnded()V

    goto :goto_5

    .line 407
    :cond_16
    iget-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->active:Z

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->listener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz p1, :cond_17

    .line 408
    invoke-interface {p1, p0}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    .line 411
    :cond_17
    :goto_5
    iget-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->click:Z

    if-eqz p1, :cond_18

    .line 412
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->clickListener:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_18

    .line 413
    invoke-virtual {p0, v5}, Lcom/brakefield/infinitestudio/ui/PullButton;->playSoundEffect(I)V

    .line 414
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->clickListener:Landroid/view/View$OnClickListener;

    invoke-interface {p1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 418
    :cond_18
    iput-boolean v5, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->out:Z

    goto :goto_6

    .line 245
    :cond_19
    invoke-virtual {p0, v7}, Lcom/brakefield/infinitestudio/ui/PullButton;->setPressed(Z)V

    .line 247
    iput-boolean v7, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->click:Z

    .line 249
    iput v0, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->downX:I

    .line 250
    iput v1, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->downY:I

    .line 251
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/PullButton;->getProgress()I

    move-result p1

    iput p1, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->startProgress:I

    .line 433
    :cond_1a
    :goto_6
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/PullButton;->invalidate()V

    return v7
.end method

.method public setColorFilter(I)V
    .locals 2

    .line 459
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/PullButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 460
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setDrawText(Z)V
    .locals 0

    .line 530
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->drawText:Z

    return-void
.end method

.method public setHorizontalable(Z)V
    .locals 0

    .line 218
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->horizontalable:Z

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 451
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->clickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnOutListener(Lcom/brakefield/infinitestudio/ui/PullButton$OnOutListener;)V
    .locals 0

    .line 471
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->outListener:Lcom/brakefield/infinitestudio/ui/PullButton$OnOutListener;

    return-void
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 0

    .line 447
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->listener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method public setScaleValue(F)V
    .locals 4

    .line 493
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 494
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 497
    :cond_0
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/PullButton;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/PullButton;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    .line 499
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/PullButton;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    sub-float v1, v0, v1

    div-float/2addr v0, v1

    .line 501
    new-instance v1, Landroid/animation/FloatEvaluator;

    invoke-direct {v1}, Landroid/animation/FloatEvaluator;-><init>()V

    iget v2, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->scaleValue:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const v3, 0x3f4ccccd    # 0.8f

    sub-float/2addr v0, v3

    mul-float/2addr v0, p1

    add-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x64

    .line 502
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 503
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->animator:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 504
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->animator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/brakefield/infinitestudio/ui/PullButton$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/brakefield/infinitestudio/ui/PullButton$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/infinitestudio/ui/PullButton;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 508
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->animator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/brakefield/infinitestudio/ui/PullButton$1;

    invoke-direct {v0, p0}, Lcom/brakefield/infinitestudio/ui/PullButton$1;-><init>(Lcom/brakefield/infinitestudio/ui/PullButton;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 526
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public setSweepable(ZFFF)V
    .locals 0

    .line 464
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->sweepable:Z

    .line 465
    iput p2, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->sweepAngle:F

    .line 466
    iput p3, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->sweepRange:F

    .line 467
    iput p4, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->sweepRadius:F

    return-void
.end method

.method public setTrackColor(I)V
    .locals 1

    .line 476
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->trackColor:I

    .line 478
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->fadePaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->textPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1
    return-void
.end method

.method public setVerticalable(Z)V
    .locals 0

    .line 222
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/PullButton;->verticalable:Z

    return-void
.end method

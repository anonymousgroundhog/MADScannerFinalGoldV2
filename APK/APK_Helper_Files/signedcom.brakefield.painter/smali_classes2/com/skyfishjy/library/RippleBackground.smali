.class public Lcom/skyfishjy/library/RippleBackground;
.super Landroid/widget/RelativeLayout;
.source "RippleBackground.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/skyfishjy/library/RippleBackground$RippleView;
    }
.end annotation


# static fields
.field private static final DEFAULT_DURATION_TIME:I = 0xbb8

.field private static final DEFAULT_FILL_TYPE:I = 0x0

.field private static final DEFAULT_RIPPLE_COUNT:I = 0x6

.field private static final DEFAULT_SCALE:F = 6.0f


# instance fields
.field private animationRunning:Z

.field private animatorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private animatorSet:Landroid/animation/AnimatorSet;

.field private paint:Landroid/graphics/Paint;

.field private rippleAmount:I

.field private rippleColor:I

.field private rippleDelay:I

.field private rippleDurationTime:I

.field private rippleParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private rippleRadius:F

.field private rippleScale:F

.field private rippleStrokeWidth:F

.field private rippleType:I

.field private rippleViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/skyfishjy/library/RippleBackground$RippleView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 37
    iput-boolean p1, p0, Lcom/skyfishjy/library/RippleBackground;->animationRunning:Z

    .line 41
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/skyfishjy/library/RippleBackground;->rippleViewList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/skyfishjy/library/RippleBackground;->animationRunning:Z

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/skyfishjy/library/RippleBackground;->rippleViewList:Ljava/util/ArrayList;

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/skyfishjy/library/RippleBackground;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 37
    iput-boolean p3, p0, Lcom/skyfishjy/library/RippleBackground;->animationRunning:Z

    .line 41
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/skyfishjy/library/RippleBackground;->rippleViewList:Ljava/util/ArrayList;

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/skyfishjy/library/RippleBackground;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/skyfishjy/library/RippleBackground;)F
    .locals 0

    .line 21
    iget p0, p0, Lcom/skyfishjy/library/RippleBackground;->rippleStrokeWidth:F

    return p0
.end method

.method static synthetic access$100(Lcom/skyfishjy/library/RippleBackground;)Landroid/graphics/Paint;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/skyfishjy/library/RippleBackground;->paint:Landroid/graphics/Paint;

    return-object p0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .line 58
    invoke-virtual {p0}, Lcom/skyfishjy/library/RippleBackground;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_3

    .line 65
    sget-object v0, Lcom/skyfishjy/library/R$styleable;->RippleBackground:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 66
    sget p2, Lcom/skyfishjy/library/R$styleable;->RippleBackground_rb_color:I

    invoke-virtual {p0}, Lcom/skyfishjy/library/RippleBackground;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/skyfishjy/library/R$color;->rippelColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/skyfishjy/library/RippleBackground;->rippleColor:I

    .line 67
    sget p2, Lcom/skyfishjy/library/R$styleable;->RippleBackground_rb_strokeWidth:I

    invoke-virtual {p0}, Lcom/skyfishjy/library/RippleBackground;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/skyfishjy/library/R$dimen;->rippleStrokeWidth:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/skyfishjy/library/RippleBackground;->rippleStrokeWidth:F

    .line 68
    sget p2, Lcom/skyfishjy/library/R$styleable;->RippleBackground_rb_radius:I

    invoke-virtual {p0}, Lcom/skyfishjy/library/RippleBackground;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/skyfishjy/library/R$dimen;->rippleRadius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/skyfishjy/library/RippleBackground;->rippleRadius:F

    .line 69
    sget p2, Lcom/skyfishjy/library/R$styleable;->RippleBackground_rb_duration:I

    const/16 v0, 0xbb8

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/skyfishjy/library/RippleBackground;->rippleDurationTime:I

    .line 70
    sget p2, Lcom/skyfishjy/library/R$styleable;->RippleBackground_rb_rippleAmount:I

    const/4 v0, 0x6

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/skyfishjy/library/RippleBackground;->rippleAmount:I

    .line 71
    sget p2, Lcom/skyfishjy/library/R$styleable;->RippleBackground_rb_scale:I

    const/high16 v0, 0x40c00000    # 6.0f

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/skyfishjy/library/RippleBackground;->rippleScale:F

    .line 72
    sget p2, Lcom/skyfishjy/library/R$styleable;->RippleBackground_rb_type:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/skyfishjy/library/RippleBackground;->rippleType:I

    .line 73
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 75
    iget p1, p0, Lcom/skyfishjy/library/RippleBackground;->rippleDurationTime:I

    iget p2, p0, Lcom/skyfishjy/library/RippleBackground;->rippleAmount:I

    div-int/2addr p1, p2

    iput p1, p0, Lcom/skyfishjy/library/RippleBackground;->rippleDelay:I

    .line 77
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/skyfishjy/library/RippleBackground;->paint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    .line 78
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 79
    iget p1, p0, Lcom/skyfishjy/library/RippleBackground;->rippleType:I

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 80
    iput p1, p0, Lcom/skyfishjy/library/RippleBackground;->rippleStrokeWidth:F

    .line 81
    iget-object p1, p0, Lcom/skyfishjy/library/RippleBackground;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0

    .line 83
    :cond_1
    iget-object p1, p0, Lcom/skyfishjy/library/RippleBackground;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 84
    :goto_0
    iget-object p1, p0, Lcom/skyfishjy/library/RippleBackground;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/skyfishjy/library/RippleBackground;->rippleColor:I

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/skyfishjy/library/RippleBackground;->rippleRadius:F

    iget v2, p0, Lcom/skyfishjy/library/RippleBackground;->rippleStrokeWidth:F

    add-float v3, v1, v2

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, v4

    float-to-int v1, v1

    invoke-direct {p1, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object p1, p0, Lcom/skyfishjy/library/RippleBackground;->rippleParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xd

    const/4 v2, -0x1

    .line 87
    invoke-virtual {p1, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 89
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/skyfishjy/library/RippleBackground;->animatorSet:Landroid/animation/AnimatorSet;

    .line 90
    iget v1, p0, Lcom/skyfishjy/library/RippleBackground;->rippleDurationTime:I

    int-to-long v3, v1

    invoke-virtual {p1, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 91
    iget-object p1, p0, Lcom/skyfishjy/library/RippleBackground;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 92
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/skyfishjy/library/RippleBackground;->animatorList:Ljava/util/ArrayList;

    move p1, v0

    .line 94
    :goto_1
    iget v1, p0, Lcom/skyfishjy/library/RippleBackground;->rippleAmount:I

    if-ge p1, v1, :cond_2

    .line 95
    new-instance v1, Lcom/skyfishjy/library/RippleBackground$RippleView;

    invoke-virtual {p0}, Lcom/skyfishjy/library/RippleBackground;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/skyfishjy/library/RippleBackground$RippleView;-><init>(Lcom/skyfishjy/library/RippleBackground;Landroid/content/Context;)V

    .line 96
    iget-object v3, p0, Lcom/skyfishjy/library/RippleBackground;->rippleParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v1, v3}, Lcom/skyfishjy/library/RippleBackground;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    iget-object v3, p0, Lcom/skyfishjy/library/RippleBackground;->rippleViewList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x2

    new-array v4, v3, [F

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v4, v0

    .line 98
    iget v6, p0, Lcom/skyfishjy/library/RippleBackground;->rippleScale:F

    aput v6, v4, p2

    const-string v6, "ScaleX"

    invoke-static {v1, v6, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 99
    invoke-virtual {v4, v2}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 100
    invoke-virtual {v4, p2}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 101
    iget v6, p0, Lcom/skyfishjy/library/RippleBackground;->rippleDelay:I

    mul-int/2addr v6, p1

    int-to-long v6, v6

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 102
    iget-object v6, p0, Lcom/skyfishjy/library/RippleBackground;->animatorList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v4, v3, [F

    aput v5, v4, v0

    .line 103
    iget v5, p0, Lcom/skyfishjy/library/RippleBackground;->rippleScale:F

    aput v5, v4, p2

    const-string v5, "ScaleY"

    invoke-static {v1, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 104
    invoke-virtual {v4, v2}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 105
    invoke-virtual {v4, p2}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 106
    iget v5, p0, Lcom/skyfishjy/library/RippleBackground;->rippleDelay:I

    mul-int/2addr v5, p1

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 107
    iget-object v5, p0, Lcom/skyfishjy/library/RippleBackground;->animatorList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v3, v3, [F

    .line 108
    fill-array-data v3, :array_0

    const-string v4, "Alpha"

    invoke-static {v1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 109
    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 110
    invoke-virtual {v1, p2}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 111
    iget v3, p0, Lcom/skyfishjy/library/RippleBackground;->rippleDelay:I

    mul-int/2addr v3, p1

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 112
    iget-object v3, p0, Lcom/skyfishjy/library/RippleBackground;->animatorList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 115
    :cond_2
    iget-object p1, p0, Lcom/skyfishjy/library/RippleBackground;->animatorSet:Landroid/animation/AnimatorSet;

    iget-object p2, p0, Lcom/skyfishjy/library/RippleBackground;->animatorList:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    return-void

    .line 62
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Attributes should be provided to this view,"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public isRippleAnimationRunning()Z
    .locals 1

    .line 150
    iget-boolean v0, p0, Lcom/skyfishjy/library/RippleBackground;->animationRunning:Z

    return v0
.end method

.method public startRippleAnimation()V
    .locals 3

    .line 133
    invoke-virtual {p0}, Lcom/skyfishjy/library/RippleBackground;->isRippleAnimationRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/skyfishjy/library/RippleBackground;->rippleViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/skyfishjy/library/RippleBackground$RippleView;

    const/4 v2, 0x0

    .line 135
    invoke-virtual {v1, v2}, Lcom/skyfishjy/library/RippleBackground$RippleView;->setVisibility(I)V

    goto :goto_0

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/skyfishjy/library/RippleBackground;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    const/4 v0, 0x1

    .line 138
    iput-boolean v0, p0, Lcom/skyfishjy/library/RippleBackground;->animationRunning:Z

    :cond_1
    return-void
.end method

.method public stopRippleAnimation()V
    .locals 1

    .line 143
    invoke-virtual {p0}, Lcom/skyfishjy/library/RippleBackground;->isRippleAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/skyfishjy/library/RippleBackground;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    const/4 v0, 0x0

    .line 145
    iput-boolean v0, p0, Lcom/skyfishjy/library/RippleBackground;->animationRunning:Z

    :cond_0
    return-void
.end method

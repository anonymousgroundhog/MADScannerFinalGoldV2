.class public Lcom/brakefield/infinitestudio/ui/RippleDrawable;
.super Landroid/graphics/drawable/StateListDrawable;
.source "RippleDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# static fields
.field public static DEBUG_UI_PRESS:Z = false

.field private static clip:Z = true


# instance fields
.field private alpha:F

.field private background:Landroid/graphics/Paint;

.field private extraFocusListener:Lcom/brakefield/infinitestudio/ui/drawables/DrawableState$OnStateChangedListener;

.field private extraHoverListener:Lcom/brakefield/infinitestudio/ui/drawables/DrawableState$OnStateChangedListener;

.field private extraPressListener:Lcom/brakefield/infinitestudio/ui/drawables/DrawableState$OnStateChangedListener;

.field private final focusedState:Lcom/brakefield/infinitestudio/ui/drawables/DrawableState;

.field private hotSpotX:F

.field private hotSpotY:F

.field private final hoveredState:Lcom/brakefield/infinitestudio/ui/drawables/DrawableState;

.field private needsRedraw:Z

.field private oval:Landroid/graphics/RectF;

.field private final paint:Landroid/graphics/Paint;

.field private final pressedState:Lcom/brakefield/infinitestudio/ui/drawables/DrawableState;

.field private final restAlpha:I

.field private ripple:F

.field private final startAlpha:I

.field private final trackedStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/ui/drawables/DrawableState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 60
    invoke-direct {p0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 33
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/drawables/DrawableStates;->Focused()Lcom/brakefield/infinitestudio/ui/drawables/DrawableState;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->focusedState:Lcom/brakefield/infinitestudio/ui/drawables/DrawableState;

    .line 34
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/drawables/DrawableStates;->Pressed()Lcom/brakefield/infinitestudio/ui/drawables/DrawableState;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->pressedState:Lcom/brakefield/infinitestudio/ui/drawables/DrawableState;

    .line 35
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/drawables/DrawableStates;->Hovered()Lcom/brakefield/infinitestudio/ui/drawables/DrawableState;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->hoveredState:Lcom/brakefield/infinitestudio/ui/drawables/DrawableState;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->trackedStates:Ljava/util/List;

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->paint:Landroid/graphics/Paint;

    const/16 v1, 0x50

    .line 43
    iput v1, p0, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->startAlpha:I

    const/16 v1, 0x28

    .line 44
    iput v1, p0, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->restAlpha:I

    const/4 v1, 0x0

    .line 46
    iput v1, p0, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->ripple:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 47
    iput v1, p0, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->alpha:F

    .line 49
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->oval:Landroid/graphics/RectF;

    const/4 v1, 0x0

    .line 56
    iput-object v1, p0, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->extraFocusListener:Lcom/brakefield/infinitestudio/ui/drawables/DrawableState$OnStateChangedListener;

    .line 57
    iput-object v1, p0, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->extraHoverListener:Lcom/brakefield/infinitestudio/ui/drawables/DrawableState$OnStateChangedListener;

    .line 58
    iput-object v1, p0, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->extraPressListener:Lcom/brakefield/infinitestudio/ui/drawables/DrawableState$OnStateChangedListener;

    const v1, -0x777778

    .line 61
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->setupInternalStates()V

    return-void
.end method

.method private fadeOut()V
    .locals 3

    .line 125
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

    const-wide/16 v1, 0x258

    .line 126
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 127
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/animation/Easing;->In()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 128
    new-instance v1, Lcom/brakefield/infinitestudio/ui/RippleDrawable$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/brakefield/infinitestudio/ui/RippleDrawable$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/infinitestudio/ui/RippleDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 134
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private setupInternalStates()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->trackedStates:Ljava/util/List;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->focusedState:Lcom/brakefield/infinitestudio/ui/drawables/DrawableState;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->trackedStates:Ljava/util/List;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->pressedState:Lcom/brakefield/infinitestudio/ui/drawables/DrawableState;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->trackedStates:Ljava/util/List;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->hoveredState:Lcom/brakefield/infinitestudio/ui/drawables/DrawableState;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->pressedState:Lcom/brakefield/infinitestudio/ui/drawables/DrawableState;

    new-instance v1, Lcom/brakefield/infinitestudio/ui/RippleDrawable$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/brakefield/infinitestudio/ui/RippleDrawable$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/infinitestudio/ui/RippleDrawable;)V

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/drawables/DrawableState;->setOnStateChangedListener(Lcom/brakefield/infinitestudio/ui/drawables/DrawableState$OnStateChangedListener;)V

    .line 78
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->hoveredState:Lcom/brakefield/infinitestudio/ui/drawables/DrawableState;

    new-instance v1, Lcom/brakefield/infinitestudio/ui/RippleDrawable$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/brakefield/infinitestudio/ui/RippleDrawable$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/infinitestudio/ui/RippleDrawable;)V

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/drawables/DrawableState;->setOnStateChangedListener(Lcom/brakefield/infinitestudio/ui/drawables/DrawableState$OnStateChangedListener;)V

    .line 85
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->focusedState:Lcom/brakefield/infinitestudio/ui/drawables/DrawableState;

    new-instance v1, Lcom/brakefield/infinitestudio/ui/RippleDrawable$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/brakefield/infinitestudio/ui/RippleDrawable$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/infinitestudio/ui/RippleDrawable;)V

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/drawables/DrawableState;->setOnStateChangedListener(Lcom/brakefield/infinitestudio/ui/drawables/DrawableState$OnStateChangedListener;)V

    return-void
.end method

.method private startRipple(Z)V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p1, :cond_0

    .line 109
    iput v0, p0, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->alpha:F

    goto :goto_0

    .line 110
    :cond_0
    iput v0, p0, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->ripple:F

    .line 112
    :goto_0
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

    .line 113
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/animation/Easing;->In()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x258

    .line 114
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 115
    new-instance v1, Lcom/brakefield/infinitestudio/ui/RippleDrawable$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/brakefield/infinitestudio/ui/RippleDrawable$$ExternalSyntheticLambda4;-><init>(Lcom/brakefield/infinitestudio/ui/RippleDrawable;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 121
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 140
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    const/4 v1, 0x0

    .line 142
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->needsRedraw:Z

    if-nez v0, :cond_0

    return-void

    .line 146
    :cond_0
    sget-boolean v2, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->DEBUG_UI_PRESS:Z

    if-eqz v2, :cond_1

    sget v2, Lcom/brakefield/infinitestudio/color/Colors;->BLUE:I

    const/16 v3, 0x64

    invoke-static {v2, v3}, Lcom/brakefield/infinitestudio/color/ColorUtils;->getTransparentColor(II)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 148
    :cond_1
    iget-object v2, p0, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->background:Landroid/graphics/Paint;

    const v3, 0x3ecccccd    # 0.4f

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    iget-object v6, p0, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->background:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 150
    :cond_2
    iget v2, p0, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->ripple:F

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-nez v2, :cond_3

    return-void

    .line 152
    :cond_3
    iget v2, p0, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->hotSpotX:F

    .line 153
    iget v4, p0, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->hotSpotY:F

    .line 155
    iget v5, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget v6, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-static {v2, v4, v5, v6}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v5

    .line 156
    iget v6, v0, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    iget v7, v0, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-static {v2, v4, v6, v7}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v6

    .line 157
    iget v7, v0, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    invoke-static {v2, v4, v7, v8}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v7

    .line 158
    iget v8, v0, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    invoke-static {v2, v4, v8, v9}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v8

    .line 160
    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    float-to-double v5, v5

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    div-double/2addr v9, v7

    div-double/2addr v5, v9

    double-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    mul-float/2addr v3, v5

    const v6, 0x3f19999a    # 0.6f

    mul-float/2addr v5, v6

    .line 161
    iget v6, p0, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->ripple:F

    mul-float/2addr v5, v6

    add-float/2addr v3, v5

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v3, v5

    .line 164
    iget-object v6, p0, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->oval:Landroid/graphics/RectF;

    sub-float v7, v2, v3

    sub-float v8, v4, v3

    add-float/2addr v2, v3

    add-float/2addr v4, v3

    invoke-virtual {v6, v7, v8, v2, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 166
    iget-object v2, p0, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->paint:Landroid/graphics/Paint;

    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 168
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 169
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v5

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 171
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 173
    sget-boolean v3, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->clip:Z

    if-eqz v3, :cond_4

    .line 175
    :try_start_0
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 177
    :catch_0
    sput-boolean v1, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->clip:Z

    .line 181
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->pressedState:Lcom/brakefield/infinitestudio/ui/drawables/DrawableState;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/ui/drawables/DrawableState;->active()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 183
    :cond_5
    iget v1, p0, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->alpha:F

    const/high16 v2, 0x42200000    # 40.0f

    .line 184
    iget v3, p0, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->ripple:F

    const/high16 v4, 0x42a00000    # 80.0f

    invoke-static {v4, v2, v3}, Lcom/brakefield/infinitestudio/color/ColorUtils;->mix(FFF)F

    move-result v2

    mul-float/2addr v2, v1

    .line 185
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->paint:Landroid/graphics/Paint;

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 187
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->oval:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 189
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method synthetic lambda$fadeOut$4$com-brakefield-infinitestudio-ui-RippleDrawable(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 129
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    .line 130
    iput v0, p0, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->alpha:F

    const/4 p1, 0x1

    .line 131
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->needsRedraw:Z

    .line 132
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->invalidateSelf()V

    return-void
.end method

.method synthetic lambda$setupInternalStates$0$com-brakefield-infinitestudio-ui-RippleDrawable(Z)V
    .locals 1

    .line 0
    if-eqz p1, :cond_0

    .line 72
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->hoveredState:Lcom/brakefield/infinitestudio/ui/drawables/DrawableState;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/drawables/DrawableState;->active()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->startRipple(Z)V

    goto :goto_0

    .line 73
    :cond_0
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->fadeOut()V

    .line 74
    :goto_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->extraPressListener:Lcom/brakefield/infinitestudio/ui/drawables/DrawableState$OnStateChangedListener;

    if-eqz v0, :cond_1

    .line 75
    invoke-interface {v0, p1}, Lcom/brakefield/infinitestudio/ui/drawables/DrawableState$OnStateChangedListener;->onStateChanged(Z)V

    :cond_1
    return-void
.end method

.method synthetic lambda$setupInternalStates$1$com-brakefield-infinitestudio-ui-RippleDrawable(Z)V
    .locals 1

    .line 0
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 79
    invoke-direct {p0, v0}, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->startRipple(Z)V

    goto :goto_0

    .line 80
    :cond_0
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->fadeOut()V

    .line 81
    :goto_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->extraHoverListener:Lcom/brakefield/infinitestudio/ui/drawables/DrawableState$OnStateChangedListener;

    if-eqz v0, :cond_1

    .line 82
    invoke-interface {v0, p1}, Lcom/brakefield/infinitestudio/ui/drawables/DrawableState$OnStateChangedListener;->onStateChanged(Z)V

    :cond_1
    return-void
.end method

.method synthetic lambda$setupInternalStates$2$com-brakefield-infinitestudio-ui-RippleDrawable(Z)V
    .locals 1

    .line 0
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 86
    invoke-direct {p0, v0}, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->startRipple(Z)V

    goto :goto_0

    .line 87
    :cond_0
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->fadeOut()V

    .line 88
    :goto_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->extraFocusListener:Lcom/brakefield/infinitestudio/ui/drawables/DrawableState$OnStateChangedListener;

    if-eqz v0, :cond_1

    .line 89
    invoke-interface {v0, p1}, Lcom/brakefield/infinitestudio/ui/drawables/DrawableState$OnStateChangedListener;->onStateChanged(Z)V

    :cond_1
    return-void
.end method

.method synthetic lambda$startRipple$3$com-brakefield-infinitestudio-ui-RippleDrawable(ZLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 116
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    if-eqz p1, :cond_0

    .line 117
    iput p2, p0, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->alpha:F

    goto :goto_0

    .line 118
    :cond_0
    iput p2, p0, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->ripple:F

    .line 119
    :goto_0
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->invalidateSelf()V

    return-void
.end method

.method needsRedraw()Z
    .locals 1

    .line 213
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->needsRedraw:Z

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->trackedStates:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/graphics/drawable/StateListDrawable;->onStateChange([I)Z

    move-result p1

    return p1

    .line 102
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brakefield/infinitestudio/ui/drawables/DrawableState;

    invoke-virtual {v1, p1}, Lcom/brakefield/infinitestudio/ui/drawables/DrawableState;->update([I)V

    goto :goto_0

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->trackedStates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brakefield/infinitestudio/ui/drawables/DrawableState;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/ui/drawables/DrawableState;->handleStateChanged()V

    goto :goto_1

    .line 104
    :cond_2
    invoke-super {p0, p1}, Landroid/graphics/drawable/StateListDrawable;->onStateChange([I)Z

    move-result p1

    return p1
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 223
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->background:Landroid/graphics/Paint;

    goto :goto_0

    .line 225
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->background:Landroid/graphics/Paint;

    .line 226
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setHotspot(FF)V
    .locals 0

    .line 218
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->hotSpotX:F

    .line 219
    iput p2, p0, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->hotSpotY:F

    return-void
.end method

.method public setOnFocusedStateChangedListener(Lcom/brakefield/infinitestudio/ui/drawables/DrawableState$OnStateChangedListener;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->extraFocusListener:Lcom/brakefield/infinitestudio/ui/drawables/DrawableState$OnStateChangedListener;

    return-void
.end method

.method public setOnHoveredStateChangedListener(Lcom/brakefield/infinitestudio/ui/drawables/DrawableState$OnStateChangedListener;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->extraHoverListener:Lcom/brakefield/infinitestudio/ui/drawables/DrawableState$OnStateChangedListener;

    return-void
.end method

.method public setOnPressedStateChangedListener(Lcom/brakefield/infinitestudio/ui/drawables/DrawableState$OnStateChangedListener;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->extraPressListener:Lcom/brakefield/infinitestudio/ui/drawables/DrawableState$OnStateChangedListener;

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    return-void
.end method

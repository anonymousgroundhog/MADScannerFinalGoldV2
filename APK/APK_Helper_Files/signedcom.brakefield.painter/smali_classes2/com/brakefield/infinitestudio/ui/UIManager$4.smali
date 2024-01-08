.class Lcom/brakefield/infinitestudio/ui/UIManager$4;
.super Ljava/lang/Object;
.source "UIManager.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/infinitestudio/ui/UIManager;->getSliderPopupListener(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/CustomSlider;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Landroid/widget/SeekBar$OnSeekBarChangeListener;)Landroid/widget/SeekBar$OnSeekBarChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private containerView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field sliderControlId:I

.field final synthetic val$displayProgressListener:Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;

.field final synthetic val$inflater:Landroid/view/LayoutInflater;

.field final synthetic val$listener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field final synthetic val$res:Landroid/content/res/Resources;

.field final synthetic val$slider:Lcom/brakefield/infinitestudio/ui/CustomSlider;


# direct methods
.method constructor <init>(Landroid/widget/SeekBar$OnSeekBarChangeListener;Landroid/content/res/Resources;Lcom/brakefield/infinitestudio/ui/CustomSlider;Landroid/view/LayoutInflater;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 140
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/UIManager$4;->val$listener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    iput-object p2, p0, Lcom/brakefield/infinitestudio/ui/UIManager$4;->val$res:Landroid/content/res/Resources;

    iput-object p3, p0, Lcom/brakefield/infinitestudio/ui/UIManager$4;->val$slider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

    iput-object p4, p0, Lcom/brakefield/infinitestudio/ui/UIManager$4;->val$inflater:Landroid/view/LayoutInflater;

    iput-object p5, p0, Lcom/brakefield/infinitestudio/ui/UIManager$4;->val$displayProgressListener:Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 142
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/UIManager$4;->sliderControlId:I

    const/4 p1, 0x0

    .line 144
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/UIManager$4;->containerView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    return-void
.end method

.method static synthetic access$000(Lcom/brakefield/infinitestudio/ui/UIManager$4;)Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/brakefield/infinitestudio/ui/UIManager$4;->containerView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    return-object p0
.end method

.method private findTopmostLayout(Landroid/view/View;)Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .locals 2

    .line 147
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 148
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 149
    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/brakefield/infinitestudio/ui/UIManager$4;->findTopmostLayout(Landroid/view/View;)Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 155
    :cond_0
    instance-of v0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v0, :cond_1

    .line 156
    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic lambda$onStopTrackingTouch$0(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 234
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 235
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 9

    .line 164
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/UIManager$4;->val$listener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    if-eqz p3, :cond_6

    .line 166
    iget-object p2, p0, Lcom/brakefield/infinitestudio/ui/UIManager$4;->containerView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz p2, :cond_6

    .line 168
    iget p3, p0, Lcom/brakefield/infinitestudio/ui/UIManager$4;->sliderControlId:I

    invoke-virtual {p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-nez p2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, p3

    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 173
    invoke-virtual {p1, v2}, Landroid/widget/SeekBar;->getLocationInWindow([I)V

    .line 175
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/UIManager$4;->val$res:Landroid/content/res/Resources;

    sget v3, Lcom/brakefield/infinitestudio/R$dimen;->button_size:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    const v3, 0x3f8ccccd    # 1.1f

    mul-float/2addr p1, v3

    float-to-int p1, p1

    aget p3, v2, p3

    .line 177
    iget-object v3, p0, Lcom/brakefield/infinitestudio/ui/UIManager$4;->val$slider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

    invoke-virtual {v3}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->getThumbX()I

    move-result v3

    add-int/2addr p3, v3

    aget v3, v2, v0

    .line 178
    iget-object v4, p0, Lcom/brakefield/infinitestudio/ui/UIManager$4;->val$slider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

    invoke-virtual {v4}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->getThumbY()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v3, p1

    if-gez v3, :cond_1

    aget v0, v2, v0

    .line 180
    iget-object v2, p0, Lcom/brakefield/infinitestudio/ui/UIManager$4;->val$slider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->getThumbY()I

    move-result v2

    add-int/2addr v0, v2

    add-int v3, v0, p1

    :cond_1
    if-eqz v1, :cond_2

    .line 184
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/UIManager$4;->val$inflater:Landroid/view/LayoutInflater;

    sget p2, Lcom/brakefield/infinitestudio/R$layout;->seek_thumb_control:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 185
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p1

    iput p1, p0, Lcom/brakefield/infinitestudio/ui/UIManager$4;->sliderControlId:I

    .line 186
    invoke-virtual {p2, p1}, Landroid/view/View;->setId(I)V

    .line 189
    :cond_2
    sget p1, Lcom/brakefield/infinitestudio/R$id;->value:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 191
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/UIManager$4;->val$slider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->getProgress()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/brakefield/infinitestudio/ui/UIManager$4;->val$slider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->getMax()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 193
    iget-object v2, p0, Lcom/brakefield/infinitestudio/ui/UIManager$4;->val$displayProgressListener:Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;

    if-eqz v2, :cond_3

    .line 194
    invoke-interface {v2, v0}, Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;->getDisplayValue(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 196
    :cond_3
    iget-object v2, p0, Lcom/brakefield/infinitestudio/ui/UIManager$4;->val$slider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->isMiddlePivot()Z

    move-result v2

    const-string v4, "%d"

    const-string v5, ""

    if-eqz v2, :cond_4

    .line 197
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    float-to-double v5, v0

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v5, v7

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    mul-double/2addr v5, v7

    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/UIManager$4;->val$slider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->getMax()I

    move-result v0

    int-to-double v7, v0

    mul-double/2addr v5, v7

    double-to-int v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 199
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/brakefield/infinitestudio/ui/UIManager$4;->val$slider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

    invoke-virtual {v5}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->getMax()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v0, v5

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    if-eqz v1, :cond_5

    .line 204
    new-instance v0, Lcom/brakefield/infinitestudio/ui/CircleDrawable;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getActiveColor()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/brakefield/infinitestudio/ui/CircleDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 205
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getForegroundColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 206
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/UIManager$4;->containerView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->addView(Landroid/view/View;)V

    :cond_5
    int-to-float p1, p3

    .line 209
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p3

    int-to-float p3, p3

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p3, v0

    sub-float/2addr p1, p3

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationX(F)V

    int-to-float p1, v3

    .line 210
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, v0

    sub-float/2addr p1, p3

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_6
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 215
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/ui/UIManager$4;->findTopmostLayout(Landroid/view/View;)Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/UIManager$4;->containerView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 216
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/UIManager$4;->val$listener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    .line 221
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/UIManager$4;->val$listener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    .line 223
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/UIManager$4;->containerView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz p1, :cond_0

    .line 225
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/UIManager$4;->sliderControlId:I

    invoke-virtual {p1, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 228
    new-instance v0, Landroid/animation/FloatEvaluator;

    invoke-direct {v0}, Landroid/animation/FloatEvaluator;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x190

    .line 229
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 230
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 233
    new-instance v1, Lcom/brakefield/infinitestudio/ui/UIManager$4$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/brakefield/infinitestudio/ui/UIManager$4$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 238
    new-instance v1, Lcom/brakefield/infinitestudio/ui/UIManager$4$1;

    invoke-direct {v1, p0, p1}, Lcom/brakefield/infinitestudio/ui/UIManager$4$1;-><init>(Lcom/brakefield/infinitestudio/ui/UIManager$4;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 251
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

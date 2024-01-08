.class public Lcom/brakefield/painter/ui/toolbars/FilterToolbar;
.super Lcom/brakefield/painter/ui/toolbars/Toolbar;
.source "FilterToolbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/painter/ui/toolbars/FilterToolbar$UpdateHandler;
    }
.end annotation


# instance fields
.field private filterTool:Lcom/brakefield/painter/nativeobjs/tools/FilterToolNative;

.field private final maskingToolbar:Lcom/brakefield/painter/ui/toolbars/MaskingToolbar;

.field private updateHandler:Lcom/brakefield/painter/ui/toolbars/FilterToolbar$UpdateHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/brakefield/painter/ui/toolbars/Toolbar;-><init>()V

    .line 25
    new-instance v0, Lcom/brakefield/painter/ui/toolbars/MaskingToolbar;

    invoke-direct {v0}, Lcom/brakefield/painter/ui/toolbars/MaskingToolbar;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/ui/toolbars/FilterToolbar;->maskingToolbar:Lcom/brakefield/painter/ui/toolbars/MaskingToolbar;

    return-void
.end method

.method private bindUI(Lcom/brakefield/painter/databinding/FilterToolbarBinding;Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 0

    .line 107
    iget-object p1, p1, Lcom/brakefield/painter/databinding/FilterToolbarBinding;->changeFilter:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;)V

    return-void
.end method

.method private cycleFilterType(Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/FilterToolbar;->filterTool:Lcom/brakefield/painter/nativeobjs/tools/FilterToolNative;

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/tools/FilterToolNative;->cycleTypes()V

    .line 112
    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    .line 113
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/toolbars/FilterToolbar;->update()V

    return-void
.end method

.method static synthetic lambda$getView$0(Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 41
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 42
    invoke-static {p2}, Lcom/brakefield/painter/PainterLib;->setCompare(Z)V

    goto :goto_0

    :cond_0
    if-eq p1, p2, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    :cond_1
    const/4 p1, 0x0

    .line 43
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->setCompare(Z)V

    .line 44
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    return p2
.end method


# virtual methods
.method public getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;
    .locals 5

    .line 30
    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getToolManager()Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;->getFilterTool()Lcom/brakefield/painter/nativeobjs/tools/FilterToolNative;

    move-result-object v1

    iput-object v1, p0, Lcom/brakefield/painter/ui/toolbars/FilterToolbar;->filterTool:Lcom/brakefield/painter/nativeobjs/tools/FilterToolNative;

    .line 33
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-static {v1}, Lcom/brakefield/painter/databinding/FilterToolbarBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/FilterToolbarBinding;

    move-result-object v1

    .line 35
    new-instance v2, Lcom/brakefield/painter/ui/toolbars/FilterToolbar$UpdateHandler;

    iget-object v3, p0, Lcom/brakefield/painter/ui/toolbars/FilterToolbar;->filterTool:Lcom/brakefield/painter/nativeobjs/tools/FilterToolNative;

    invoke-direct {v2, v0, v3, v1}, Lcom/brakefield/painter/ui/toolbars/FilterToolbar$UpdateHandler;-><init>(Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;Lcom/brakefield/painter/nativeobjs/tools/FilterToolNative;Lcom/brakefield/painter/databinding/FilterToolbarBinding;)V

    iput-object v2, p0, Lcom/brakefield/painter/ui/toolbars/FilterToolbar;->updateHandler:Lcom/brakefield/painter/ui/toolbars/FilterToolbar$UpdateHandler;

    .line 36
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/FilterToolbar;->maskingToolbar:Lcom/brakefield/painter/ui/toolbars/MaskingToolbar;

    iget-object v2, v1, Lcom/brakefield/painter/databinding/FilterToolbarBinding;->maskingToolbar:Lcom/brakefield/painter/databinding/MaskingToolbarBinding;

    invoke-virtual {v0, p1, p2, v2}, Lcom/brakefield/painter/ui/toolbars/MaskingToolbar;->setupView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/databinding/MaskingToolbarBinding;)V

    .line 38
    iget-object v0, v1, Lcom/brakefield/painter/databinding/FilterToolbarBinding;->compare:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 39
    iget-object v0, v1, Lcom/brakefield/painter/databinding/FilterToolbarBinding;->compare:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 40
    iget-object v0, v1, Lcom/brakefield/painter/databinding/FilterToolbarBinding;->compare:Landroid/widget/ImageView;

    new-instance v2, Lcom/brakefield/painter/ui/toolbars/FilterToolbar$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2}, Lcom/brakefield/painter/ui/toolbars/FilterToolbar$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/SimpleUI;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 48
    iget-object v0, v1, Lcom/brakefield/painter/databinding/FilterToolbarBinding;->adjustmentSliderValue:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setTextColor(I)V

    .line 50
    iget-object v0, v1, Lcom/brakefield/painter/databinding/FilterToolbarBinding;->adjustmentSlider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    new-instance v3, Lcom/brakefield/painter/ui/toolbars/FilterToolbar$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p2, v1}, Lcom/brakefield/painter/ui/toolbars/FilterToolbar$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/ui/toolbars/FilterToolbar;Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/databinding/FilterToolbarBinding;)V

    const/4 v4, 0x0

    invoke-static {p1, v0, v2, v4, v3}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/CustomSlider;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V

    .line 58
    iget-object v0, v1, Lcom/brakefield/painter/databinding/FilterToolbarBinding;->gradientSlider:Lcom/brakefield/painter/ui/GradientSlider;

    new-instance v2, Lcom/brakefield/painter/ui/toolbars/FilterToolbar$1;

    invoke-direct {v2, p0, p2, p1, v1}, Lcom/brakefield/painter/ui/toolbars/FilterToolbar$1;-><init>(Lcom/brakefield/painter/ui/toolbars/FilterToolbar;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Lcom/brakefield/painter/databinding/FilterToolbarBinding;)V

    invoke-virtual {v0, v2}, Lcom/brakefield/painter/ui/GradientSlider;->setGradientChangedListener(Lcom/brakefield/painter/ui/GradientSlider$OnGradientChangedListener;)V

    .line 80
    iget-object v0, v1, Lcom/brakefield/painter/databinding/FilterToolbarBinding;->changeFilter:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 81
    iget-object v0, v1, Lcom/brakefield/painter/databinding/FilterToolbarBinding;->changeFilter:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 84
    iget-object v0, v1, Lcom/brakefield/painter/databinding/FilterToolbarBinding;->apply:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 85
    iget-object v0, v1, Lcom/brakefield/painter/databinding/FilterToolbarBinding;->apply:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 86
    iget-object v0, v1, Lcom/brakefield/painter/databinding/FilterToolbarBinding;->apply:Landroid/widget/ImageView;

    new-instance v2, Lcom/brakefield/painter/ui/toolbars/FilterToolbar$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1, p2}, Lcom/brakefield/painter/ui/toolbars/FilterToolbar$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/ui/toolbars/FilterToolbar;Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v0, v1, Lcom/brakefield/painter/databinding/FilterToolbarBinding;->cancel:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 89
    iget-object v0, v1, Lcom/brakefield/painter/databinding/FilterToolbarBinding;->cancel:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 90
    iget-object v0, v1, Lcom/brakefield/painter/databinding/FilterToolbarBinding;->cancel:Landroid/widget/ImageView;

    new-instance v2, Lcom/brakefield/painter/ui/toolbars/FilterToolbar$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1, p2}, Lcom/brakefield/painter/ui/toolbars/FilterToolbar$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/ui/toolbars/FilterToolbar;Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object p1, v1, Lcom/brakefield/painter/databinding/FilterToolbarBinding;->filterType:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 93
    iget-object p1, v1, Lcom/brakefield/painter/databinding/FilterToolbarBinding;->filterType:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setTextColor(I)V

    .line 94
    iget-object p1, v1, Lcom/brakefield/painter/databinding/FilterToolbarBinding;->filterType:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/FilterToolbar$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p2}, Lcom/brakefield/painter/ui/toolbars/FilterToolbar$$ExternalSyntheticLambda4;-><init>(Lcom/brakefield/painter/ui/toolbars/FilterToolbar;Lcom/brakefield/painter/ui/SimpleUI;)V

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    invoke-direct {p0, v1, p2}, Lcom/brakefield/painter/ui/toolbars/FilterToolbar;->bindUI(Lcom/brakefield/painter/databinding/FilterToolbarBinding;Lcom/brakefield/painter/ui/SimpleUI;)V

    .line 98
    invoke-virtual {v1}, Lcom/brakefield/painter/databinding/FilterToolbarBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$getView$1$com-brakefield-painter-ui-toolbars-FilterToolbar(Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/databinding/FilterToolbarBinding;Landroid/widget/SeekBar;IZ)V
    .locals 4

    .line 52
    iget-object p3, p0, Lcom/brakefield/painter/ui/toolbars/FilterToolbar;->filterTool:Lcom/brakefield/painter/nativeobjs/tools/FilterToolNative;

    int-to-float p5, p4

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p5, v0

    invoke-virtual {p3, p5}, Lcom/brakefield/painter/nativeobjs/tools/FilterToolNative;->setValue(F)V

    .line 53
    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    .line 54
    iget-object p1, p2, Lcom/brakefield/painter/databinding/FilterToolbarBinding;->adjustmentSlider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->isMiddlePivot()Z

    move-result p1

    if-eqz p1, :cond_0

    int-to-double p3, p4

    iget-object p1, p2, Lcom/brakefield/painter/databinding/FilterToolbarBinding;->adjustmentSlider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->getMax()I

    move-result p1

    int-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    sub-double/2addr p3, v0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double/2addr p3, v0

    double-to-int p4, p3

    .line 55
    :cond_0
    iget-object p1, p2, Lcom/brakefield/painter/databinding/FilterToolbarBinding;->adjustmentSliderValue:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "%"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method synthetic lambda$getView$2$com-brakefield-painter-ui-toolbars-FilterToolbar(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 0

    .line 86
    invoke-virtual {p0, p1, p2}, Lcom/brakefield/painter/ui/toolbars/FilterToolbar;->applyTool(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    return-void
.end method

.method synthetic lambda$getView$3$com-brakefield-painter-ui-toolbars-FilterToolbar(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 0

    .line 90
    invoke-virtual {p0, p1, p2}, Lcom/brakefield/painter/ui/toolbars/FilterToolbar;->cancelTool(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    return-void
.end method

.method synthetic lambda$getView$4$com-brakefield-painter-ui-toolbars-FilterToolbar(Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/toolbars/FilterToolbar;->cycleFilterType(Lcom/brakefield/painter/ui/SimpleUI;)V

    return-void
.end method

.method public update()V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/FilterToolbar;->updateHandler:Lcom/brakefield/painter/ui/toolbars/FilterToolbar$UpdateHandler;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/toolbars/FilterToolbar$UpdateHandler;->update()V

    .line 103
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/FilterToolbar;->maskingToolbar:Lcom/brakefield/painter/ui/toolbars/MaskingToolbar;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/toolbars/MaskingToolbar;->update()V

    return-void
.end method

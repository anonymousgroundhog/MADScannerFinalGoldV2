.class public Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar;
.super Lcom/brakefield/painter/ui/toolbars/Toolbar;
.source "ColorAdjustmentsToolbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$UpdateHandler;
    }
.end annotation


# instance fields
.field private colorAdjustmentTool:Lcom/brakefield/painter/nativeobjs/tools/ColorAdjustmentToolNative;

.field private final maskingToolbar:Lcom/brakefield/painter/ui/toolbars/MaskingToolbar;

.field private updateHandler:Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$UpdateHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/brakefield/painter/ui/toolbars/Toolbar;-><init>()V

    .line 22
    new-instance v0, Lcom/brakefield/painter/ui/toolbars/MaskingToolbar;

    invoke-direct {v0}, Lcom/brakefield/painter/ui/toolbars/MaskingToolbar;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar;->maskingToolbar:Lcom/brakefield/painter/ui/toolbars/MaskingToolbar;

    return-void
.end method

.method static synthetic lambda$getView$0(Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 38
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 39
    invoke-static {p2}, Lcom/brakefield/painter/PainterLib;->setCompare(Z)V

    goto :goto_0

    :cond_0
    if-eq p1, p2, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    :cond_1
    const/4 p1, 0x0

    .line 40
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->setCompare(Z)V

    .line 41
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    return p2
.end method


# virtual methods
.method public getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;
    .locals 5

    .line 27
    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getToolManager()Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;->getColorAdjustmentTool()Lcom/brakefield/painter/nativeobjs/tools/ColorAdjustmentToolNative;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar;->colorAdjustmentTool:Lcom/brakefield/painter/nativeobjs/tools/ColorAdjustmentToolNative;

    .line 30
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;

    move-result-object v0

    .line 32
    new-instance v1, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$UpdateHandler;

    iget-object v2, p0, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar;->colorAdjustmentTool:Lcom/brakefield/painter/nativeobjs/tools/ColorAdjustmentToolNative;

    invoke-direct {v1, v2, v0, p2}, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$UpdateHandler;-><init>(Lcom/brakefield/painter/nativeobjs/tools/ColorAdjustmentToolNative;Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;Lcom/brakefield/painter/ui/SimpleUI;)V

    iput-object v1, p0, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar;->updateHandler:Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$UpdateHandler;

    .line 33
    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar;->maskingToolbar:Lcom/brakefield/painter/ui/toolbars/MaskingToolbar;

    iget-object v2, v0, Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;->maskingToolbar:Lcom/brakefield/painter/databinding/MaskingToolbarBinding;

    invoke-virtual {v1, p1, p2, v2}, Lcom/brakefield/painter/ui/toolbars/MaskingToolbar;->setupView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/databinding/MaskingToolbarBinding;)V

    .line 35
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;->compare:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 36
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;->compare:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 37
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;->compare:Landroid/widget/ImageView;

    new-instance v2, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2}, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/SimpleUI;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 45
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;->adjustmentSliderValue:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setTextColor(I)V

    .line 47
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;->adjustmentSlider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    new-instance v3, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0}, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$$ExternalSyntheticLambda7;-><init>(Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar;)V

    const/4 v4, 0x0

    invoke-static {p1, v1, v2, v4, v3}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/CustomSlider;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V

    .line 53
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;->apply:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 54
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;->apply:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 55
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;->apply:Landroid/widget/ImageView;

    new-instance v2, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0, p1, p2}, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$$ExternalSyntheticLambda8;-><init>(Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar;Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;->cancel:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 58
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;->cancel:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 59
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;->cancel:Landroid/widget/ImageView;

    new-instance v2, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0, p1, p2}, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$$ExternalSyntheticLambda9;-><init>(Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar;Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;->brightnessButton:Landroid/widget/FrameLayout;

    iget-object v2, v0, Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;->brightnessImage:Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;Landroid/view/View;)V

    .line 65
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;->brightnessButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0, p2, p1}, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$$ExternalSyntheticLambda10;-><init>(Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;->contrastButton:Landroid/widget/FrameLayout;

    iget-object v2, v0, Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;->contrastImage:Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;Landroid/view/View;)V

    .line 71
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;->contrastButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0, p2, p1}, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$$ExternalSyntheticLambda11;-><init>(Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;->exposureButton:Landroid/widget/FrameLayout;

    iget-object v2, v0, Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;->exposureImage:Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;Landroid/view/View;)V

    .line 77
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;->exposureButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0, p2, p1}, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$$ExternalSyntheticLambda12;-><init>(Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;->gammaButton:Landroid/widget/FrameLayout;

    iget-object v2, v0, Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;->gammaImage:Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;Landroid/view/View;)V

    .line 83
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;->gammaButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p2, p1}, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;->saturationButton:Landroid/widget/FrameLayout;

    iget-object v2, v0, Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;->saturationImage:Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;Landroid/view/View;)V

    .line 89
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;->saturationButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p2, p1}, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;->vibranceButton:Landroid/widget/FrameLayout;

    iget-object v2, v0, Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;->vibranceImage:Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;Landroid/view/View;)V

    .line 95
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;->vibranceButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p2, p1}, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;->temperatureButton:Landroid/widget/FrameLayout;

    iget-object v2, v0, Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;->temperatureImage:Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;Landroid/view/View;)V

    .line 101
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;->temperatureButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p2, p1}, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$$ExternalSyntheticLambda4;-><init>(Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;->tintButton:Landroid/widget/FrameLayout;

    iget-object v2, v0, Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;->tintImage:Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;Landroid/view/View;)V

    .line 107
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;->tintButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, p2, p1}, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$$ExternalSyntheticLambda5;-><init>(Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;->hueButton:Landroid/widget/FrameLayout;

    iget-object v2, v0, Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;->hueImage:Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;Landroid/view/View;)V

    .line 113
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;->hueButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, p2, p1}, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$$ExternalSyntheticLambda6;-><init>(Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    invoke-virtual {v0}, Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$getView$1$com-brakefield-painter-ui-toolbars-ColorAdjustmentsToolbar(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 49
    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar;->colorAdjustmentTool:Lcom/brakefield/painter/nativeobjs/tools/ColorAdjustmentToolNative;

    int-to-float p2, p2

    const/high16 p3, 0x42c80000    # 100.0f

    div-float/2addr p2, p3

    invoke-virtual {p1, p2}, Lcom/brakefield/painter/nativeobjs/tools/ColorAdjustmentToolNative;->setValue(F)V

    .line 50
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar;->update()V

    return-void
.end method

.method synthetic lambda$getView$10$com-brakefield-painter-ui-toolbars-ColorAdjustmentsToolbar(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    .line 102
    iget-object p3, p0, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar;->colorAdjustmentTool:Lcom/brakefield/painter/nativeobjs/tools/ColorAdjustmentToolNative;

    const/4 v0, 0x6

    invoke-virtual {p3, v0}, Lcom/brakefield/painter/nativeobjs/tools/ColorAdjustmentToolNative;->setMode(I)V

    .line 103
    invoke-virtual {p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method synthetic lambda$getView$11$com-brakefield-painter-ui-toolbars-ColorAdjustmentsToolbar(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    .line 108
    iget-object p3, p0, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar;->colorAdjustmentTool:Lcom/brakefield/painter/nativeobjs/tools/ColorAdjustmentToolNative;

    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Lcom/brakefield/painter/nativeobjs/tools/ColorAdjustmentToolNative;->setMode(I)V

    .line 109
    invoke-virtual {p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method synthetic lambda$getView$12$com-brakefield-painter-ui-toolbars-ColorAdjustmentsToolbar(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    .line 114
    iget-object p3, p0, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar;->colorAdjustmentTool:Lcom/brakefield/painter/nativeobjs/tools/ColorAdjustmentToolNative;

    const/4 v0, 0x7

    invoke-virtual {p3, v0}, Lcom/brakefield/painter/nativeobjs/tools/ColorAdjustmentToolNative;->setMode(I)V

    .line 115
    invoke-virtual {p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method synthetic lambda$getView$2$com-brakefield-painter-ui-toolbars-ColorAdjustmentsToolbar(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 0

    .line 55
    invoke-virtual {p0, p1, p2}, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar;->applyTool(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    return-void
.end method

.method synthetic lambda$getView$3$com-brakefield-painter-ui-toolbars-ColorAdjustmentsToolbar(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 0

    .line 59
    invoke-virtual {p0, p1, p2}, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar;->cancelTool(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    return-void
.end method

.method synthetic lambda$getView$4$com-brakefield-painter-ui-toolbars-ColorAdjustmentsToolbar(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    .line 66
    iget-object p3, p0, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar;->colorAdjustmentTool:Lcom/brakefield/painter/nativeobjs/tools/ColorAdjustmentToolNative;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/brakefield/painter/nativeobjs/tools/ColorAdjustmentToolNative;->setMode(I)V

    .line 67
    invoke-virtual {p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method synthetic lambda$getView$5$com-brakefield-painter-ui-toolbars-ColorAdjustmentsToolbar(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    .line 72
    iget-object p3, p0, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar;->colorAdjustmentTool:Lcom/brakefield/painter/nativeobjs/tools/ColorAdjustmentToolNative;

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lcom/brakefield/painter/nativeobjs/tools/ColorAdjustmentToolNative;->setMode(I)V

    .line 73
    invoke-virtual {p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method synthetic lambda$getView$6$com-brakefield-painter-ui-toolbars-ColorAdjustmentsToolbar(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    .line 78
    iget-object p3, p0, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar;->colorAdjustmentTool:Lcom/brakefield/painter/nativeobjs/tools/ColorAdjustmentToolNative;

    const/4 v0, 0x2

    invoke-virtual {p3, v0}, Lcom/brakefield/painter/nativeobjs/tools/ColorAdjustmentToolNative;->setMode(I)V

    .line 79
    invoke-virtual {p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method synthetic lambda$getView$7$com-brakefield-painter-ui-toolbars-ColorAdjustmentsToolbar(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    .line 84
    iget-object p3, p0, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar;->colorAdjustmentTool:Lcom/brakefield/painter/nativeobjs/tools/ColorAdjustmentToolNative;

    const/4 v0, 0x3

    invoke-virtual {p3, v0}, Lcom/brakefield/painter/nativeobjs/tools/ColorAdjustmentToolNative;->setMode(I)V

    .line 85
    invoke-virtual {p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method synthetic lambda$getView$8$com-brakefield-painter-ui-toolbars-ColorAdjustmentsToolbar(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    .line 90
    iget-object p3, p0, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar;->colorAdjustmentTool:Lcom/brakefield/painter/nativeobjs/tools/ColorAdjustmentToolNative;

    const/4 v0, 0x4

    invoke-virtual {p3, v0}, Lcom/brakefield/painter/nativeobjs/tools/ColorAdjustmentToolNative;->setMode(I)V

    .line 91
    invoke-virtual {p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method synthetic lambda$getView$9$com-brakefield-painter-ui-toolbars-ColorAdjustmentsToolbar(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    .line 96
    iget-object p3, p0, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar;->colorAdjustmentTool:Lcom/brakefield/painter/nativeobjs/tools/ColorAdjustmentToolNative;

    const/4 v0, 0x5

    invoke-virtual {p3, v0}, Lcom/brakefield/painter/nativeobjs/tools/ColorAdjustmentToolNative;->setMode(I)V

    .line 97
    invoke-virtual {p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method public update()V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar;->updateHandler:Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$UpdateHandler;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$UpdateHandler;->update()V

    .line 123
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar;->maskingToolbar:Lcom/brakefield/painter/ui/toolbars/MaskingToolbar;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/toolbars/MaskingToolbar;->update()V

    return-void
.end method

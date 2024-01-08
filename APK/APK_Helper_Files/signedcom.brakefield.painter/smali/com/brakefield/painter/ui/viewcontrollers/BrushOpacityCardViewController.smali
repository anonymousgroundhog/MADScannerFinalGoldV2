.class public Lcom/brakefield/painter/ui/viewcontrollers/BrushOpacityCardViewController;
.super Ljava/lang/Object;
.source "BrushOpacityCardViewController.java"


# instance fields
.field private binding:Lcom/brakefield/painter/databinding/BrushOpacityCardViewControllerBinding;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/brakefield/painter/ui/viewcontrollers/BrushOpacityCardViewController;)Lcom/brakefield/painter/databinding/BrushOpacityCardViewControllerBinding;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushOpacityCardViewController;->binding:Lcom/brakefield/painter/databinding/BrushOpacityCardViewControllerBinding;

    return-object p0
.end method

.method static synthetic lambda$getView$3(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    .line 129
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/SimpleUI;->showBrushSettings(Landroid/app/Activity;)V

    .line 130
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SimpleUI;->dismissPopup()V

    return-void
.end method

.method private updateOpacityLabels(Lcom/brakefield/painter/OpacityControl;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 5

    .line 138
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 139
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 141
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v2

    .line 142
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getHighlightColor()I

    move-result v3

    .line 144
    iget p1, p1, Lcom/brakefield/painter/OpacityControl;->affects:I

    if-eqz p1, :cond_2

    const/4 v4, 0x1

    if-eq p1, v4, :cond_1

    const/4 v4, 0x2

    if-eq p1, v4, :cond_0

    goto :goto_0

    .line 162
    :cond_0
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 163
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 164
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 165
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 166
    invoke-virtual {p4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 167
    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 154
    :cond_1
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 155
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 156
    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 157
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 158
    invoke-virtual {p4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 159
    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 146
    :cond_2
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 147
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 148
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 149
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 150
    invoke-virtual {p4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 151
    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getView(Landroid/app/Activity;Lcom/brakefield/painter/OpacityControl;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;
    .locals 12

    .line 27
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/painter/databinding/BrushOpacityCardViewControllerBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/BrushOpacityCardViewControllerBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushOpacityCardViewController;->binding:Lcom/brakefield/painter/databinding/BrushOpacityCardViewControllerBinding;

    .line 29
    new-instance v0, Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushHeadSettings()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;-><init>(J)V

    .line 31
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->isDark()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 32
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushOpacityCardViewController;->binding:Lcom/brakefield/painter/databinding/BrushOpacityCardViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/BrushOpacityCardViewControllerBinding;->brushPreview:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    const/16 v4, 0x14

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-direct {v3, v4}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 38
    :cond_0
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushOpacityCardViewController;->binding:Lcom/brakefield/painter/databinding/BrushOpacityCardViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/BrushOpacityCardViewControllerBinding;->brushPreview:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 40
    :goto_0
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushOpacityCardViewController;->binding:Lcom/brakefield/painter/databinding/BrushOpacityCardViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/BrushOpacityCardViewControllerBinding;->brushPreview:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getForegroundColor()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 42
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushOpacityCardViewController;->binding:Lcom/brakefield/painter/databinding/BrushOpacityCardViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/BrushOpacityCardViewControllerBinding;->opacitySlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {p3}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v3

    new-instance v4, Lcom/brakefield/painter/ui/viewcontrollers/BrushOpacityCardViewController$1;

    invoke-direct {v4, p0, p3, p1}, Lcom/brakefield/painter/ui/viewcontrollers/BrushOpacityCardViewController$1;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/BrushOpacityCardViewController;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-static {p1, v1, v3, v2, v4}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl2(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 60
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushOpacityCardViewController;->binding:Lcom/brakefield/painter/databinding/BrushOpacityCardViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/BrushOpacityCardViewControllerBinding;->opacitySlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushOpacity()F

    move-result v3

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    .line 62
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushOpacityCardViewController;->binding:Lcom/brakefield/painter/databinding/BrushOpacityCardViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/BrushOpacityCardViewControllerBinding;->flowSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {p3}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v3

    new-instance v5, Lcom/brakefield/painter/ui/viewcontrollers/BrushOpacityCardViewController$2;

    invoke-direct {v5, p0, v0, p3, p1}, Lcom/brakefield/painter/ui/viewcontrollers/BrushOpacityCardViewController$2;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/BrushOpacityCardViewController;Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-static {p1, v1, v3, v2, v5}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl2(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 81
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushOpacityCardViewController;->binding:Lcom/brakefield/painter/databinding/BrushOpacityCardViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/BrushOpacityCardViewControllerBinding;->flowSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;->getFlow()F

    move-result v3

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    .line 83
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushOpacityCardViewController;->binding:Lcom/brakefield/painter/databinding/BrushOpacityCardViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/BrushOpacityCardViewControllerBinding;->softnessSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {p3}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v3

    new-instance v5, Lcom/brakefield/painter/ui/viewcontrollers/BrushOpacityCardViewController$3;

    invoke-direct {v5, p0, v0, p3, p1}, Lcom/brakefield/painter/ui/viewcontrollers/BrushOpacityCardViewController$3;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/BrushOpacityCardViewController;Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-static {p1, v1, v3, v2, v5}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl2(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 97
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushOpacityCardViewController;->binding:Lcom/brakefield/painter/databinding/BrushOpacityCardViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/BrushOpacityCardViewControllerBinding;->softnessSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;->getSoftness()F

    move-result v0

    mul-float/2addr v0, v4

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    .line 99
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushOpacityCardViewController;->binding:Lcom/brakefield/painter/databinding/BrushOpacityCardViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushOpacityCardViewControllerBinding;->opacitySlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->getTitleLabel()Landroid/widget/TextView;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushOpacityCardViewController;->binding:Lcom/brakefield/painter/databinding/BrushOpacityCardViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/BrushOpacityCardViewControllerBinding;->flowSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->getTitleLabel()Landroid/widget/TextView;

    move-result-object v9

    .line 101
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushOpacityCardViewController;->binding:Lcom/brakefield/painter/databinding/BrushOpacityCardViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/BrushOpacityCardViewControllerBinding;->softnessSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->getTitleLabel()Landroid/widget/TextView;

    move-result-object v10

    .line 103
    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 104
    new-instance v11, Lcom/brakefield/painter/ui/viewcontrollers/BrushOpacityCardViewController$$ExternalSyntheticLambda0;

    move-object v1, v11

    move-object v2, p0

    move-object v3, p2

    move-object v4, v0

    move-object v5, v9

    move-object v6, v10

    move-object v7, p3

    move-object v8, p1

    invoke-direct/range {v1 .. v8}, Lcom/brakefield/painter/ui/viewcontrollers/BrushOpacityCardViewController$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/BrushOpacityCardViewController;Lcom/brakefield/painter/OpacityControl;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    invoke-static {v9}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 111
    new-instance v11, Lcom/brakefield/painter/ui/viewcontrollers/BrushOpacityCardViewController$$ExternalSyntheticLambda1;

    move-object v1, v11

    invoke-direct/range {v1 .. v8}, Lcom/brakefield/painter/ui/viewcontrollers/BrushOpacityCardViewController$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/BrushOpacityCardViewController;Lcom/brakefield/painter/OpacityControl;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    invoke-static {v10}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 118
    new-instance v11, Lcom/brakefield/painter/ui/viewcontrollers/BrushOpacityCardViewController$$ExternalSyntheticLambda2;

    move-object v1, v11

    invoke-direct/range {v1 .. v8}, Lcom/brakefield/painter/ui/viewcontrollers/BrushOpacityCardViewController$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/BrushOpacityCardViewController;Lcom/brakefield/painter/OpacityControl;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    invoke-direct {p0, p2, v0, v9, v10}, Lcom/brakefield/painter/ui/viewcontrollers/BrushOpacityCardViewController;->updateOpacityLabels(Lcom/brakefield/painter/OpacityControl;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 126
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushOpacityCardViewController;->binding:Lcom/brakefield/painter/databinding/BrushOpacityCardViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/BrushOpacityCardViewControllerBinding;->brushSettings:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 127
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushOpacityCardViewController;->binding:Lcom/brakefield/painter/databinding/BrushOpacityCardViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/BrushOpacityCardViewControllerBinding;->brushSettings:Landroid/widget/ImageView;

    invoke-static {p2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 128
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushOpacityCardViewController;->binding:Lcom/brakefield/painter/databinding/BrushOpacityCardViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/BrushOpacityCardViewControllerBinding;->brushSettings:Landroid/widget/ImageView;

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/BrushOpacityCardViewController$$ExternalSyntheticLambda3;

    invoke-direct {v0, p3, p1}, Lcom/brakefield/painter/ui/viewcontrollers/BrushOpacityCardViewController$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushOpacityCardViewController;->binding:Lcom/brakefield/painter/databinding/BrushOpacityCardViewControllerBinding;

    invoke-virtual {p1}, Lcom/brakefield/painter/databinding/BrushOpacityCardViewControllerBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method synthetic lambda$getView$0$com-brakefield-painter-ui-viewcontrollers-BrushOpacityCardViewController(Lcom/brakefield/painter/OpacityControl;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    .line 0
    const/4 p7, 0x0

    .line 105
    invoke-virtual {p1, p7}, Lcom/brakefield/painter/OpacityControl;->setAffects(I)V

    .line 106
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/brakefield/painter/ui/viewcontrollers/BrushOpacityCardViewController;->updateOpacityLabels(Lcom/brakefield/painter/OpacityControl;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 107
    invoke-virtual {p5, p6}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method synthetic lambda$getView$1$com-brakefield-painter-ui-viewcontrollers-BrushOpacityCardViewController(Lcom/brakefield/painter/OpacityControl;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    .line 0
    const/4 p7, 0x1

    .line 112
    invoke-virtual {p1, p7}, Lcom/brakefield/painter/OpacityControl;->setAffects(I)V

    .line 113
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/brakefield/painter/ui/viewcontrollers/BrushOpacityCardViewController;->updateOpacityLabels(Lcom/brakefield/painter/OpacityControl;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 114
    invoke-virtual {p5, p6}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method synthetic lambda$getView$2$com-brakefield-painter-ui-viewcontrollers-BrushOpacityCardViewController(Lcom/brakefield/painter/OpacityControl;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    .line 0
    const/4 p7, 0x2

    .line 119
    invoke-virtual {p1, p7}, Lcom/brakefield/painter/OpacityControl;->setAffects(I)V

    .line 120
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/brakefield/painter/ui/viewcontrollers/BrushOpacityCardViewController;->updateOpacityLabels(Lcom/brakefield/painter/OpacityControl;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 121
    invoke-virtual {p5, p6}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

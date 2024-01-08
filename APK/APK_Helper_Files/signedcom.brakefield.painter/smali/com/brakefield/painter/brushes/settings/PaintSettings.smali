.class public Lcom/brakefield/painter/brushes/settings/PaintSettings;
.super Lcom/brakefield/painter/brushes/settings/BrushSettings;
.source "PaintSettings.java"


# instance fields
.field binding:Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/brakefield/painter/brushes/settings/BrushSettings;-><init>()V

    return-void
.end method

.method static synthetic lambda$bindSettings$5(Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 85
    invoke-virtual {p0, p2}, Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;->setWetPaint(Z)V

    .line 86
    invoke-static {}, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->updatePreview()V

    return-void
.end method

.method static synthetic lambda$bindSettings$6(Landroid/app/Activity;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 91
    invoke-static {p2}, Lcom/brakefield/painter/PainterLib;->setBlendSampleBottomLayers(Z)V

    .line 92
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 93
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "PREF_BLEND_SAMPLE_LOWER_LAYERS"

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public bindSettings(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 13

    .line 36
    new-instance v0, Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushBlendSettings()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;-><init>(J)V

    .line 38
    iget-object v1, p0, Lcom/brakefield/painter/brushes/settings/PaintSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;->mixDilutionSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    new-instance v3, Lcom/brakefield/painter/brushes/settings/PaintSettings$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0}, Lcom/brakefield/painter/brushes/settings/PaintSettings$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/brushes/settings/PaintSettings;Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;)V

    const/4 v4, 0x0

    invoke-static {p1, v1, v2, v4, v3}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V

    .line 45
    iget-object v1, p0, Lcom/brakefield/painter/brushes/settings/PaintSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;->mixDilutionSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;->getMixDilution()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    .line 47
    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;->getMixDilution()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 48
    iget-object v1, p0, Lcom/brakefield/painter/brushes/settings/PaintSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;->paintDynamicsSection:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 50
    :cond_0
    iget-object v1, p0, Lcom/brakefield/painter/brushes/settings/PaintSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;->paintDynamicsSection:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 53
    :goto_0
    iget-object v1, p0, Lcom/brakefield/painter/brushes/settings/PaintSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;->mixAmountSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    new-instance v5, Lcom/brakefield/painter/brushes/settings/PaintSettings$$ExternalSyntheticLambda7;

    invoke-direct {v5, p0, v0}, Lcom/brakefield/painter/brushes/settings/PaintSettings$$ExternalSyntheticLambda7;-><init>(Lcom/brakefield/painter/brushes/settings/PaintSettings;Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;)V

    invoke-static {p1, v1, v2, v4, v5}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V

    .line 58
    iget-object v1, p0, Lcom/brakefield/painter/brushes/settings/PaintSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;->mixAmountSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;->getMixAmount()F

    move-result v2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    .line 61
    iget-object v1, p0, Lcom/brakefield/painter/brushes/settings/PaintSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;->blendBlurSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    new-instance v5, Lcom/brakefield/painter/brushes/settings/PaintSettings$$ExternalSyntheticLambda8;

    invoke-direct {v5, p0, v0}, Lcom/brakefield/painter/brushes/settings/PaintSettings$$ExternalSyntheticLambda8;-><init>(Lcom/brakefield/painter/brushes/settings/PaintSettings;Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;)V

    invoke-static {p1, v1, v2, v4, v5}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V

    .line 66
    iget-object v1, p0, Lcom/brakefield/painter/brushes/settings/PaintSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;->blendBlurSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;->getSmudgeAmount()F

    move-result v2

    float-to-double v5, v2

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v7, v5

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    mul-double/2addr v7, v5

    double-to-int v2, v7

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    .line 68
    iget-object v1, p0, Lcom/brakefield/painter/brushes/settings/PaintSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;->blendPullSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    new-instance v5, Lcom/brakefield/painter/brushes/settings/PaintSettings$$ExternalSyntheticLambda9;

    invoke-direct {v5, p0, v0}, Lcom/brakefield/painter/brushes/settings/PaintSettings$$ExternalSyntheticLambda9;-><init>(Lcom/brakefield/painter/brushes/settings/PaintSettings;Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;)V

    invoke-static {p1, v1, v2, v4, v5}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V

    .line 73
    iget-object v1, p0, Lcom/brakefield/painter/brushes/settings/PaintSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;->blendPullSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;->getSmudgeStrength()F

    move-result v2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    .line 75
    iget-object v1, p0, Lcom/brakefield/painter/brushes/settings/PaintSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;->blendFlowSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    new-instance v5, Lcom/brakefield/painter/brushes/settings/PaintSettings$$ExternalSyntheticLambda10;

    invoke-direct {v5, p0, v0}, Lcom/brakefield/painter/brushes/settings/PaintSettings$$ExternalSyntheticLambda10;-><init>(Lcom/brakefield/painter/brushes/settings/PaintSettings;Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;)V

    invoke-static {p1, v1, v2, v4, v5}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V

    .line 80
    iget-object v1, p0, Lcom/brakefield/painter/brushes/settings/PaintSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;->blendFlowSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;->getSmudgeOpacity()F

    move-result v2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    .line 83
    iget-object v1, p0, Lcom/brakefield/painter/brushes/settings/PaintSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;->wetPaintToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    new-instance v2, Lcom/brakefield/painter/brushes/settings/PaintSettings$$ExternalSyntheticLambda11;

    invoke-direct {v2, v0}, Lcom/brakefield/painter/brushes/settings/PaintSettings$$ExternalSyntheticLambda11;-><init>(Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;)V

    .line 87
    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;->isWetPaint()Z

    move-result v0

    .line 83
    invoke-static {v1, v2, v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setupToggle(Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;Landroid/widget/CompoundButton$OnCheckedChangeListener;Z)V

    .line 89
    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/PaintSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;->sampleBottomLayersToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    new-instance v1, Lcom/brakefield/painter/brushes/settings/PaintSettings$$ExternalSyntheticLambda12;

    invoke-direct {v1, p1}, Lcom/brakefield/painter/brushes/settings/PaintSettings$$ExternalSyntheticLambda12;-><init>(Landroid/app/Activity;)V

    .line 94
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBlendSampleBottomLayers()Z

    move-result v2

    .line 89
    invoke-static {v0, v1, v2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setupToggle(Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;Landroid/widget/CompoundButton$OnCheckedChangeListener;Z)V

    .line 98
    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/PaintSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;

    iget-object v7, v0, Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;->dilutionDynamics:Lcom/brakefield/painter/databinding/BrushSettingsDynamicsBinding;

    const v8, 0x7f12010b

    const v9, 0x7f12031b

    new-instance v10, Lcom/brakefield/painter/brushes/settings/PaintSettings$1;

    invoke-direct {v10, p0}, Lcom/brakefield/painter/brushes/settings/PaintSettings$1;-><init>(Lcom/brakefield/painter/brushes/settings/PaintSettings;)V

    new-instance v11, Lcom/brakefield/painter/brushes/settings/PaintSettings$2;

    invoke-direct {v11, p0}, Lcom/brakefield/painter/brushes/settings/PaintSettings$2;-><init>(Lcom/brakefield/painter/brushes/settings/PaintSettings;)V

    new-instance v12, Lcom/brakefield/painter/brushes/settings/PaintSettings$3;

    invoke-direct {v12, p0}, Lcom/brakefield/painter/brushes/settings/PaintSettings$3;-><init>(Lcom/brakefield/painter/brushes/settings/PaintSettings;)V

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v5 .. v12}, Lcom/brakefield/painter/brushes/settings/PaintSettings;->setupDynamics(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/databinding/BrushSettingsDynamicsBinding;IILcom/brakefield/painter/brushes/settings/BrushSettings$ProfileCurveSetting;Lcom/brakefield/painter/brushes/settings/BrushSettings$ProfileCurveSetting;Lcom/brakefield/painter/brushes/settings/BrushSettings$ProfileCurveSetting;)V

    .line 144
    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/PaintSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;->jitterInitialHueSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    new-instance v2, Lcom/brakefield/painter/brushes/settings/PaintSettings$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/brakefield/painter/brushes/settings/PaintSettings$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/brushes/settings/PaintSettings;)V

    invoke-static {p1, v0, v1, v4, v2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V

    .line 150
    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/PaintSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;->jitterInitialHueSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushJitterColorStartHue()F

    move-result v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    .line 152
    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/PaintSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;->jitterInitialSaturationSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    new-instance v2, Lcom/brakefield/painter/brushes/settings/PaintSettings$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/brakefield/painter/brushes/settings/PaintSettings$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/brushes/settings/PaintSettings;)V

    invoke-static {p1, v0, v1, v4, v2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V

    .line 158
    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/PaintSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;->jitterInitialSaturationSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushJitterColorStartSaturation()F

    move-result v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    .line 160
    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/PaintSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;->jitterInitialBrightnessSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    new-instance v2, Lcom/brakefield/painter/brushes/settings/PaintSettings$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/brakefield/painter/brushes/settings/PaintSettings$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/brushes/settings/PaintSettings;)V

    invoke-static {p1, v0, v1, v4, v2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V

    .line 166
    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/PaintSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;->jitterInitialBrightnessSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushJitterColorStartBrightness()F

    move-result v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    .line 169
    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/PaintSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;->jitterContinuousHueSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    new-instance v2, Lcom/brakefield/painter/brushes/settings/PaintSettings$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/brakefield/painter/brushes/settings/PaintSettings$$ExternalSyntheticLambda4;-><init>(Lcom/brakefield/painter/brushes/settings/PaintSettings;)V

    invoke-static {p1, v0, v1, v4, v2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V

    .line 175
    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/PaintSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;->jitterContinuousHueSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushJitterColorHue()F

    move-result v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    .line 177
    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/PaintSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;->jitterContinuousSaturationSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    new-instance v2, Lcom/brakefield/painter/brushes/settings/PaintSettings$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/brakefield/painter/brushes/settings/PaintSettings$$ExternalSyntheticLambda5;-><init>(Lcom/brakefield/painter/brushes/settings/PaintSettings;)V

    invoke-static {p1, v0, v1, v4, v2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V

    .line 183
    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/PaintSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;->jitterContinuousSaturationSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushJitterColorSaturation()F

    move-result v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    .line 185
    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/PaintSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;->jitterContinuousBrightnessSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p2

    new-instance v1, Lcom/brakefield/painter/brushes/settings/PaintSettings$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/brushes/settings/PaintSettings$$ExternalSyntheticLambda6;-><init>(Lcom/brakefield/painter/brushes/settings/PaintSettings;)V

    invoke-static {p1, v0, p2, v4, v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V

    .line 191
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/PaintSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;->jitterContinuousBrightnessSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushJitterColorBrightness()F

    move-result p2

    mul-float/2addr p2, v3

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    return-void
.end method

.method public getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;
    .locals 1

    .line 28
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/brushes/settings/PaintSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/brakefield/painter/brushes/settings/PaintSettings;->bindSettings(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    .line 30
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/PaintSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;

    invoke-virtual {p1}, Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$bindSettings$0$com-brakefield-painter-brushes-settings-PaintSettings(Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 0
    int-to-float p2, p3

    const/high16 p4, 0x42c80000    # 100.0f

    div-float/2addr p2, p4

    .line 40
    invoke-virtual {p1, p2}, Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;->setMixDilution(F)V

    .line 41
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/PaintSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;->mixDilutionSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, ""

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setValueLabel(Ljava/lang/String;)V

    if-lez p3, :cond_0

    .line 42
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/PaintSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;->paintDynamicsSection:Landroid/widget/LinearLayout;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation;->setVisible(Landroid/view/View;)V

    goto :goto_0

    .line 43
    :cond_0
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/PaintSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;->paintDynamicsSection:Landroid/widget/LinearLayout;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation;->setGone(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$bindSettings$1$com-brakefield-painter-brushes-settings-PaintSettings(Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 0
    int-to-float p2, p3

    const/high16 p4, 0x42c80000    # 100.0f

    div-float/2addr p2, p4

    .line 55
    invoke-virtual {p1, p2}, Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;->setMixAmount(F)V

    .line 56
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/PaintSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;->mixAmountSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, ""

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setValueLabel(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$bindSettings$10$com-brakefield-painter-brushes-settings-PaintSettings(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 0
    int-to-float p1, p2

    const/high16 p3, 0x42c80000    # 100.0f

    div-float/2addr p1, p3

    .line 171
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->setBrushJitterColorHue(F)V

    .line 172
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/PaintSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;->jitterContinuousHueSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setValueLabel(Ljava/lang/String;)V

    .line 173
    invoke-static {}, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->updatePreview()V

    return-void
.end method

.method synthetic lambda$bindSettings$11$com-brakefield-painter-brushes-settings-PaintSettings(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 0
    int-to-float p1, p2

    const/high16 p3, 0x42c80000    # 100.0f

    div-float/2addr p1, p3

    .line 179
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->setBrushJitterColorSaturation(F)V

    .line 180
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/PaintSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;->jitterContinuousSaturationSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setValueLabel(Ljava/lang/String;)V

    .line 181
    invoke-static {}, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->updatePreview()V

    return-void
.end method

.method synthetic lambda$bindSettings$12$com-brakefield-painter-brushes-settings-PaintSettings(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 0
    int-to-float p1, p2

    const/high16 p3, 0x42c80000    # 100.0f

    div-float/2addr p1, p3

    .line 187
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->setBrushJitterColorBrightness(F)V

    .line 188
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/PaintSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;->jitterContinuousBrightnessSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setValueLabel(Ljava/lang/String;)V

    .line 189
    invoke-static {}, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->updatePreview()V

    return-void
.end method

.method synthetic lambda$bindSettings$2$com-brakefield-painter-brushes-settings-PaintSettings(Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 0
    int-to-float p2, p3

    const/high16 p4, 0x42c80000    # 100.0f

    div-float/2addr p2, p4

    const/high16 p4, 0x3f800000    # 1.0f

    sub-float/2addr p4, p2

    .line 63
    invoke-virtual {p1, p4}, Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;->setSmudgeAmount(F)V

    .line 64
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/PaintSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;->blendBlurSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, ""

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setValueLabel(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$bindSettings$3$com-brakefield-painter-brushes-settings-PaintSettings(Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 0
    int-to-float p2, p3

    const/high16 p4, 0x42c80000    # 100.0f

    div-float/2addr p2, p4

    .line 70
    invoke-virtual {p1, p2}, Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;->setSmudgeStrength(F)V

    .line 71
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/PaintSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;->blendPullSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, ""

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setValueLabel(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$bindSettings$4$com-brakefield-painter-brushes-settings-PaintSettings(Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 0
    int-to-float p2, p3

    const/high16 p4, 0x42c80000    # 100.0f

    div-float/2addr p2, p4

    .line 77
    invoke-virtual {p1, p2}, Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;->setSmudgeOpacity(F)V

    .line 78
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/PaintSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;->blendFlowSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, ""

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setValueLabel(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$bindSettings$7$com-brakefield-painter-brushes-settings-PaintSettings(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 0
    int-to-float p1, p2

    const/high16 p3, 0x42c80000    # 100.0f

    div-float/2addr p1, p3

    .line 146
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->setBrushJitterColorStartHue(F)V

    .line 147
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/PaintSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;->jitterInitialHueSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setValueLabel(Ljava/lang/String;)V

    .line 148
    invoke-static {}, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->updatePreview()V

    return-void
.end method

.method synthetic lambda$bindSettings$8$com-brakefield-painter-brushes-settings-PaintSettings(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 0
    int-to-float p1, p2

    const/high16 p3, 0x42c80000    # 100.0f

    div-float/2addr p1, p3

    .line 154
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->setBrushJitterColorStartSaturation(F)V

    .line 155
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/PaintSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;->jitterInitialSaturationSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setValueLabel(Ljava/lang/String;)V

    .line 156
    invoke-static {}, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->updatePreview()V

    return-void
.end method

.method synthetic lambda$bindSettings$9$com-brakefield-painter-brushes-settings-PaintSettings(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 0
    int-to-float p1, p2

    const/high16 p3, 0x42c80000    # 100.0f

    div-float/2addr p1, p3

    .line 162
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->setBrushJitterColorStartBrightness(F)V

    .line 163
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/PaintSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsPaintSectionViewControllerBinding;->jitterInitialBrightnessSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setValueLabel(Ljava/lang/String;)V

    .line 164
    invoke-static {}, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->updatePreview()V

    return-void
.end method

.class Lcom/brakefield/painter/brushes/settings/SpecialSettings$WatercolorSection;
.super Ljava/lang/Object;
.source "SpecialSettings.java"

# interfaces
.implements Lcom/brakefield/painter/brushes/settings/SpecialSettings$Section;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/brushes/settings/SpecialSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WatercolorSection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/brushes/settings/SpecialSettings;

.field private watercolorSettings:Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialWatercolorSettingsNative;


# direct methods
.method private constructor <init>(Lcom/brakefield/painter/brushes/settings/SpecialSettings;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$WatercolorSection;->this$0:Lcom/brakefield/painter/brushes/settings/SpecialSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/brakefield/painter/brushes/settings/SpecialSettings;Lcom/brakefield/painter/brushes/settings/SpecialSettings$1;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/brakefield/painter/brushes/settings/SpecialSettings$WatercolorSection;-><init>(Lcom/brakefield/painter/brushes/settings/SpecialSettings;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$setup$0$com-brakefield-painter-brushes-settings-SpecialSettings$WatercolorSection(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 68
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$WatercolorSection;->watercolorSettings:Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialWatercolorSettingsNative;

    invoke-virtual {p1, p2}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialWatercolorSettingsNative;->setBleeds(Z)V

    if-eqz p2, :cond_0

    .line 69
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$WatercolorSection;->this$0:Lcom/brakefield/painter/brushes/settings/SpecialSettings;

    iget-object p1, p1, Lcom/brakefield/painter/brushes/settings/SpecialSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;->watercolorSettings:Lcom/brakefield/painter/databinding/SettingsBrushBleedBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/SettingsBrushBleedBinding;->settings:Landroid/widget/LinearLayout;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation;->setVisible(Landroid/view/View;)V

    goto :goto_0

    .line 70
    :cond_0
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$WatercolorSection;->this$0:Lcom/brakefield/painter/brushes/settings/SpecialSettings;

    iget-object p1, p1, Lcom/brakefield/painter/brushes/settings/SpecialSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;->watercolorSettings:Lcom/brakefield/painter/databinding/SettingsBrushBleedBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/SettingsBrushBleedBinding;->settings:Landroid/widget/LinearLayout;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation;->setGone(Landroid/view/View;)V

    .line 71
    :goto_0
    invoke-static {}, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->updatePreview()V

    return-void
.end method

.method synthetic lambda$setup$1$com-brakefield-painter-brushes-settings-SpecialSettings$WatercolorSection(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 77
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$WatercolorSection;->watercolorSettings:Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialWatercolorSettingsNative;

    int-to-float p3, p2

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p3, v0

    invoke-virtual {p1, p3}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialWatercolorSettingsNative;->setBleedRate(F)V

    .line 78
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$WatercolorSection;->this$0:Lcom/brakefield/painter/brushes/settings/SpecialSettings;

    iget-object p1, p1, Lcom/brakefield/painter/brushes/settings/SpecialSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;->watercolorSettings:Lcom/brakefield/painter/databinding/SettingsBrushBleedBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/SettingsBrushBleedBinding;->bleedOutSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setValueLabel(Ljava/lang/String;)V

    .line 79
    invoke-static {}, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->updatePreview()V

    return-void
.end method

.method synthetic lambda$setup$2$com-brakefield-painter-brushes-settings-SpecialSettings$WatercolorSection(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 84
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$WatercolorSection;->watercolorSettings:Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialWatercolorSettingsNative;

    int-to-float p3, p2

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p3, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p3

    invoke-virtual {p1, v0}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialWatercolorSettingsNative;->setGlaze(F)V

    .line 85
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$WatercolorSection;->this$0:Lcom/brakefield/painter/brushes/settings/SpecialSettings;

    iget-object p1, p1, Lcom/brakefield/painter/brushes/settings/SpecialSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;->watercolorSettings:Lcom/brakefield/painter/databinding/SettingsBrushBleedBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/SettingsBrushBleedBinding;->glazeSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setValueLabel(Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->updatePreview()V

    return-void
.end method

.method synthetic lambda$setup$3$com-brakefield-painter-brushes-settings-SpecialSettings$WatercolorSection(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 91
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$WatercolorSection;->watercolorSettings:Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialWatercolorSettingsNative;

    int-to-float p3, p2

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p3, v0

    invoke-virtual {p1, p3}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialWatercolorSettingsNative;->setMixIn(F)V

    .line 92
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$WatercolorSection;->this$0:Lcom/brakefield/painter/brushes/settings/SpecialSettings;

    iget-object p1, p1, Lcom/brakefield/painter/brushes/settings/SpecialSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;->watercolorSettings:Lcom/brakefield/painter/databinding/SettingsBrushBleedBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/SettingsBrushBleedBinding;->mixAmountSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setValueLabel(Ljava/lang/String;)V

    .line 93
    invoke-static {}, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->updatePreview()V

    return-void
.end method

.method synthetic lambda$setup$4$com-brakefield-painter-brushes-settings-SpecialSettings$WatercolorSection(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 98
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$WatercolorSection;->watercolorSettings:Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialWatercolorSettingsNative;

    int-to-float p3, p2

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p3, v0

    invoke-virtual {p1, p3}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialWatercolorSettingsNative;->setDryout(F)V

    .line 99
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$WatercolorSection;->this$0:Lcom/brakefield/painter/brushes/settings/SpecialSettings;

    iget-object p1, p1, Lcom/brakefield/painter/brushes/settings/SpecialSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;->watercolorSettings:Lcom/brakefield/painter/databinding/SettingsBrushBleedBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/SettingsBrushBleedBinding;->dryoutSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setValueLabel(Ljava/lang/String;)V

    .line 100
    invoke-static {}, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->updatePreview()V

    return-void
.end method

.method public setup(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 4

    .line 64
    new-instance v0, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialWatercolorSettingsNative;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushSpecialWatercolorSettings()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialWatercolorSettingsNative;-><init>(J)V

    iput-object v0, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$WatercolorSection;->watercolorSettings:Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialWatercolorSettingsNative;

    .line 66
    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$WatercolorSection;->this$0:Lcom/brakefield/painter/brushes/settings/SpecialSettings;

    iget-object v0, v0, Lcom/brakefield/painter/brushes/settings/SpecialSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;->watercolorSettings:Lcom/brakefield/painter/databinding/SettingsBrushBleedBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SettingsBrushBleedBinding;->watercolorToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    new-instance v1, Lcom/brakefield/painter/brushes/settings/SpecialSettings$WatercolorSection$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/brushes/settings/SpecialSettings$WatercolorSection$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/brushes/settings/SpecialSettings$WatercolorSection;)V

    iget-object v2, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$WatercolorSection;->watercolorSettings:Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialWatercolorSettingsNative;

    .line 73
    invoke-virtual {v2}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialWatercolorSettingsNative;->getBleeds()Z

    move-result v2

    .line 66
    invoke-static {v0, v1, v2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setupToggle(Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;Landroid/widget/CompoundButton$OnCheckedChangeListener;Z)V

    .line 75
    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$WatercolorSection;->this$0:Lcom/brakefield/painter/brushes/settings/SpecialSettings;

    iget-object v0, v0, Lcom/brakefield/painter/brushes/settings/SpecialSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;->watercolorSettings:Lcom/brakefield/painter/databinding/SettingsBrushBleedBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SettingsBrushBleedBinding;->bleedOutSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    new-instance v2, Lcom/brakefield/painter/brushes/settings/SpecialSettings$WatercolorSection$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/brakefield/painter/brushes/settings/SpecialSettings$WatercolorSection$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/brushes/settings/SpecialSettings$WatercolorSection;)V

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v3, v2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V

    .line 82
    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$WatercolorSection;->this$0:Lcom/brakefield/painter/brushes/settings/SpecialSettings;

    iget-object v0, v0, Lcom/brakefield/painter/brushes/settings/SpecialSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;->watercolorSettings:Lcom/brakefield/painter/databinding/SettingsBrushBleedBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SettingsBrushBleedBinding;->glazeSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    new-instance v2, Lcom/brakefield/painter/brushes/settings/SpecialSettings$WatercolorSection$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/brakefield/painter/brushes/settings/SpecialSettings$WatercolorSection$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/brushes/settings/SpecialSettings$WatercolorSection;)V

    invoke-static {p1, v0, v1, v3, v2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V

    .line 89
    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$WatercolorSection;->this$0:Lcom/brakefield/painter/brushes/settings/SpecialSettings;

    iget-object v0, v0, Lcom/brakefield/painter/brushes/settings/SpecialSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;->watercolorSettings:Lcom/brakefield/painter/databinding/SettingsBrushBleedBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SettingsBrushBleedBinding;->mixAmountSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    new-instance v2, Lcom/brakefield/painter/brushes/settings/SpecialSettings$WatercolorSection$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/brakefield/painter/brushes/settings/SpecialSettings$WatercolorSection$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/brushes/settings/SpecialSettings$WatercolorSection;)V

    invoke-static {p1, v0, v1, v3, v2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V

    .line 96
    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$WatercolorSection;->this$0:Lcom/brakefield/painter/brushes/settings/SpecialSettings;

    iget-object v0, v0, Lcom/brakefield/painter/brushes/settings/SpecialSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;->watercolorSettings:Lcom/brakefield/painter/databinding/SettingsBrushBleedBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SettingsBrushBleedBinding;->dryoutSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p2

    new-instance v1, Lcom/brakefield/painter/brushes/settings/SpecialSettings$WatercolorSection$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/brushes/settings/SpecialSettings$WatercolorSection$$ExternalSyntheticLambda4;-><init>(Lcom/brakefield/painter/brushes/settings/SpecialSettings$WatercolorSection;)V

    invoke-static {p1, v0, p2, v3, v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V

    return-void
.end method

.method public update(Landroid/content/Context;)V
    .locals 3

    .line 106
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$WatercolorSection;->watercolorSettings:Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialWatercolorSettingsNative;

    invoke-virtual {p1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialWatercolorSettingsNative;->getBleeds()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$WatercolorSection;->this$0:Lcom/brakefield/painter/brushes/settings/SpecialSettings;

    iget-object p1, p1, Lcom/brakefield/painter/brushes/settings/SpecialSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;->watercolorSettings:Lcom/brakefield/painter/databinding/SettingsBrushBleedBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/SettingsBrushBleedBinding;->settings:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 107
    :cond_0
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$WatercolorSection;->this$0:Lcom/brakefield/painter/brushes/settings/SpecialSettings;

    iget-object p1, p1, Lcom/brakefield/painter/brushes/settings/SpecialSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;->watercolorSettings:Lcom/brakefield/painter/databinding/SettingsBrushBleedBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/SettingsBrushBleedBinding;->settings:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 108
    :goto_0
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$WatercolorSection;->this$0:Lcom/brakefield/painter/brushes/settings/SpecialSettings;

    iget-object p1, p1, Lcom/brakefield/painter/brushes/settings/SpecialSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;->watercolorSettings:Lcom/brakefield/painter/databinding/SettingsBrushBleedBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/SettingsBrushBleedBinding;->watercolorToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$WatercolorSection;->watercolorSettings:Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialWatercolorSettingsNative;

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialWatercolorSettingsNative;->getBleeds()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;->setChecked(Z)V

    .line 109
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$WatercolorSection;->this$0:Lcom/brakefield/painter/brushes/settings/SpecialSettings;

    iget-object p1, p1, Lcom/brakefield/painter/brushes/settings/SpecialSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;->watercolorSettings:Lcom/brakefield/painter/databinding/SettingsBrushBleedBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/SettingsBrushBleedBinding;->bleedOutSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$WatercolorSection;->watercolorSettings:Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialWatercolorSettingsNative;

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialWatercolorSettingsNative;->getBleedRate()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    .line 110
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$WatercolorSection;->this$0:Lcom/brakefield/painter/brushes/settings/SpecialSettings;

    iget-object p1, p1, Lcom/brakefield/painter/brushes/settings/SpecialSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;->watercolorSettings:Lcom/brakefield/painter/databinding/SettingsBrushBleedBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/SettingsBrushBleedBinding;->glazeSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$WatercolorSection;->watercolorSettings:Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialWatercolorSettingsNative;

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialWatercolorSettingsNative;->getGlaze()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    mul-float/2addr v2, v1

    float-to-int v0, v2

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    .line 111
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$WatercolorSection;->this$0:Lcom/brakefield/painter/brushes/settings/SpecialSettings;

    iget-object p1, p1, Lcom/brakefield/painter/brushes/settings/SpecialSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;->watercolorSettings:Lcom/brakefield/painter/databinding/SettingsBrushBleedBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/SettingsBrushBleedBinding;->mixAmountSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$WatercolorSection;->watercolorSettings:Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialWatercolorSettingsNative;

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialWatercolorSettingsNative;->getMixIn()F

    move-result v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    .line 112
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$WatercolorSection;->this$0:Lcom/brakefield/painter/brushes/settings/SpecialSettings;

    iget-object p1, p1, Lcom/brakefield/painter/brushes/settings/SpecialSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;->watercolorSettings:Lcom/brakefield/painter/databinding/SettingsBrushBleedBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/SettingsBrushBleedBinding;->dryoutSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$WatercolorSection;->watercolorSettings:Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialWatercolorSettingsNative;

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialWatercolorSettingsNative;->getDryout()F

    move-result v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    return-void
.end method

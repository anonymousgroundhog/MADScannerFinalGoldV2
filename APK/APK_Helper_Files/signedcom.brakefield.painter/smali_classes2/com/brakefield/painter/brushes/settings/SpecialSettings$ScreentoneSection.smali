.class Lcom/brakefield/painter/brushes/settings/SpecialSettings$ScreentoneSection;
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
    name = "ScreentoneSection"
.end annotation


# instance fields
.field private screentoneSettings:Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialScreentoneSettingsNative;

.field final synthetic this$0:Lcom/brakefield/painter/brushes/settings/SpecialSettings;


# direct methods
.method private constructor <init>(Lcom/brakefield/painter/brushes/settings/SpecialSettings;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ScreentoneSection;->this$0:Lcom/brakefield/painter/brushes/settings/SpecialSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/brakefield/painter/brushes/settings/SpecialSettings;Lcom/brakefield/painter/brushes/settings/SpecialSettings$1;)V
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ScreentoneSection;-><init>(Lcom/brakefield/painter/brushes/settings/SpecialSettings;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$setup$0$com-brakefield-painter-brushes-settings-SpecialSettings$ScreentoneSection(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 127
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ScreentoneSection;->screentoneSettings:Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialScreentoneSettingsNative;

    invoke-virtual {p1, p2}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialScreentoneSettingsNative;->setUsesScreentone(Z)V

    if-eqz p2, :cond_0

    .line 128
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ScreentoneSection;->this$0:Lcom/brakefield/painter/brushes/settings/SpecialSettings;

    iget-object p1, p1, Lcom/brakefield/painter/brushes/settings/SpecialSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;->screentoneSettings:Lcom/brakefield/painter/databinding/SettingsBrushPixelSnapBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/SettingsBrushPixelSnapBinding;->settings:Landroid/widget/LinearLayout;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation;->setVisible(Landroid/view/View;)V

    goto :goto_0

    .line 129
    :cond_0
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ScreentoneSection;->this$0:Lcom/brakefield/painter/brushes/settings/SpecialSettings;

    iget-object p1, p1, Lcom/brakefield/painter/brushes/settings/SpecialSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;->screentoneSettings:Lcom/brakefield/painter/databinding/SettingsBrushPixelSnapBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/SettingsBrushPixelSnapBinding;->settings:Landroid/widget/LinearLayout;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation;->setGone(Landroid/view/View;)V

    .line 130
    :goto_0
    invoke-static {}, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->updatePreview()V

    return-void
.end method

.method synthetic lambda$setup$1$com-brakefield-painter-brushes-settings-SpecialSettings$ScreentoneSection(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 137
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ScreentoneSection;->screentoneSettings:Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialScreentoneSettingsNative;

    int-to-float p3, p2

    invoke-virtual {p1, p3}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialScreentoneSettingsNative;->setGridSize(F)V

    .line 138
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ScreentoneSection;->this$0:Lcom/brakefield/painter/brushes/settings/SpecialSettings;

    iget-object p1, p1, Lcom/brakefield/painter/brushes/settings/SpecialSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;->screentoneSettings:Lcom/brakefield/painter/databinding/SettingsBrushPixelSnapBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/SettingsBrushPixelSnapBinding;->spacingSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

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

    .line 139
    invoke-static {}, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->updatePreview()V

    return-void
.end method

.method synthetic lambda$setup$2$com-brakefield-painter-brushes-settings-SpecialSettings$ScreentoneSection(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 145
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ScreentoneSection;->screentoneSettings:Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialScreentoneSettingsNative;

    int-to-float p3, p2

    invoke-virtual {p1, p3}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialScreentoneSettingsNative;->setAngle(F)V

    .line 146
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ScreentoneSection;->this$0:Lcom/brakefield/painter/brushes/settings/SpecialSettings;

    iget-object p1, p1, Lcom/brakefield/painter/brushes/settings/SpecialSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;->screentoneSettings:Lcom/brakefield/painter/databinding/SettingsBrushPixelSnapBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/SettingsBrushPixelSnapBinding;->angleSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setValueLabel(Ljava/lang/String;)V

    .line 147
    invoke-static {}, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->updatePreview()V

    return-void
.end method

.method synthetic lambda$setup$3$com-brakefield-painter-brushes-settings-SpecialSettings$ScreentoneSection(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 152
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ScreentoneSection;->screentoneSettings:Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialScreentoneSettingsNative;

    invoke-virtual {p1, p2}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialScreentoneSettingsNative;->setScaleWithSize(Z)V

    .line 153
    invoke-static {}, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->updatePreview()V

    return-void
.end method

.method public setup(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 4

    .line 123
    new-instance v0, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialScreentoneSettingsNative;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushSpecialScreentoneSettings()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialScreentoneSettingsNative;-><init>(J)V

    iput-object v0, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ScreentoneSection;->screentoneSettings:Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialScreentoneSettingsNative;

    .line 125
    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ScreentoneSection;->this$0:Lcom/brakefield/painter/brushes/settings/SpecialSettings;

    iget-object v0, v0, Lcom/brakefield/painter/brushes/settings/SpecialSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;->screentoneSettings:Lcom/brakefield/painter/databinding/SettingsBrushPixelSnapBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SettingsBrushPixelSnapBinding;->screentoneToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    new-instance v1, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ScreentoneSection$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ScreentoneSection$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/brushes/settings/SpecialSettings$ScreentoneSection;)V

    iget-object v2, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ScreentoneSection;->screentoneSettings:Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialScreentoneSettingsNative;

    .line 132
    invoke-virtual {v2}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialScreentoneSettingsNative;->getUsesScreentone()Z

    move-result v2

    .line 125
    invoke-static {v0, v1, v2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setupToggle(Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;Landroid/widget/CompoundButton$OnCheckedChangeListener;Z)V

    .line 134
    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ScreentoneSection;->this$0:Lcom/brakefield/painter/brushes/settings/SpecialSettings;

    iget-object v0, v0, Lcom/brakefield/painter/brushes/settings/SpecialSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;->screentoneSettings:Lcom/brakefield/painter/databinding/SettingsBrushPixelSnapBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SettingsBrushPixelSnapBinding;->spacingSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setMax(I)V

    .line 135
    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ScreentoneSection;->this$0:Lcom/brakefield/painter/brushes/settings/SpecialSettings;

    iget-object v0, v0, Lcom/brakefield/painter/brushes/settings/SpecialSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;->screentoneSettings:Lcom/brakefield/painter/databinding/SettingsBrushPixelSnapBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SettingsBrushPixelSnapBinding;->spacingSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    new-instance v2, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ScreentoneSection$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ScreentoneSection$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/brushes/settings/SpecialSettings$ScreentoneSection;)V

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v3, v2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V

    .line 142
    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ScreentoneSection;->this$0:Lcom/brakefield/painter/brushes/settings/SpecialSettings;

    iget-object v0, v0, Lcom/brakefield/painter/brushes/settings/SpecialSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;->screentoneSettings:Lcom/brakefield/painter/databinding/SettingsBrushPixelSnapBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SettingsBrushPixelSnapBinding;->angleSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    const/16 v1, 0xb4

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setMax(I)V

    .line 143
    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ScreentoneSection;->this$0:Lcom/brakefield/painter/brushes/settings/SpecialSettings;

    iget-object v0, v0, Lcom/brakefield/painter/brushes/settings/SpecialSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;->screentoneSettings:Lcom/brakefield/painter/databinding/SettingsBrushPixelSnapBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SettingsBrushPixelSnapBinding;->angleSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p2

    new-instance v1, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ScreentoneSection$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ScreentoneSection$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/brushes/settings/SpecialSettings$ScreentoneSection;)V

    invoke-static {p1, v0, p2, v3, v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V

    .line 150
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ScreentoneSection;->this$0:Lcom/brakefield/painter/brushes/settings/SpecialSettings;

    iget-object p1, p1, Lcom/brakefield/painter/brushes/settings/SpecialSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;->screentoneSettings:Lcom/brakefield/painter/databinding/SettingsBrushPixelSnapBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/SettingsBrushPixelSnapBinding;->scaleWithSizeToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    new-instance p2, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ScreentoneSection$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ScreentoneSection$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/brushes/settings/SpecialSettings$ScreentoneSection;)V

    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ScreentoneSection;->screentoneSettings:Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialScreentoneSettingsNative;

    .line 154
    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialScreentoneSettingsNative;->getScaleWithSize()Z

    move-result v0

    .line 150
    invoke-static {p1, p2, v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setupToggle(Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;Landroid/widget/CompoundButton$OnCheckedChangeListener;Z)V

    return-void
.end method

.method public update(Landroid/content/Context;)V
    .locals 1

    .line 159
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ScreentoneSection;->this$0:Lcom/brakefield/painter/brushes/settings/SpecialSettings;

    iget-object p1, p1, Lcom/brakefield/painter/brushes/settings/SpecialSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;->screentoneSettings:Lcom/brakefield/painter/databinding/SettingsBrushPixelSnapBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/SettingsBrushPixelSnapBinding;->screentoneToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ScreentoneSection;->screentoneSettings:Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialScreentoneSettingsNative;

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialScreentoneSettingsNative;->getUsesScreentone()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;->setChecked(Z)V

    .line 160
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ScreentoneSection;->screentoneSettings:Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialScreentoneSettingsNative;

    invoke-virtual {p1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialScreentoneSettingsNative;->getUsesScreentone()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ScreentoneSection;->this$0:Lcom/brakefield/painter/brushes/settings/SpecialSettings;

    iget-object p1, p1, Lcom/brakefield/painter/brushes/settings/SpecialSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;->screentoneSettings:Lcom/brakefield/painter/databinding/SettingsBrushPixelSnapBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/SettingsBrushPixelSnapBinding;->settings:Landroid/widget/LinearLayout;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation;->setVisible(Landroid/view/View;)V

    goto :goto_0

    .line 161
    :cond_0
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ScreentoneSection;->this$0:Lcom/brakefield/painter/brushes/settings/SpecialSettings;

    iget-object p1, p1, Lcom/brakefield/painter/brushes/settings/SpecialSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;->screentoneSettings:Lcom/brakefield/painter/databinding/SettingsBrushPixelSnapBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/SettingsBrushPixelSnapBinding;->settings:Landroid/widget/LinearLayout;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation;->setGone(Landroid/view/View;)V

    .line 162
    :goto_0
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ScreentoneSection;->this$0:Lcom/brakefield/painter/brushes/settings/SpecialSettings;

    iget-object p1, p1, Lcom/brakefield/painter/brushes/settings/SpecialSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;->screentoneSettings:Lcom/brakefield/painter/databinding/SettingsBrushPixelSnapBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/SettingsBrushPixelSnapBinding;->spacingSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ScreentoneSection;->screentoneSettings:Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialScreentoneSettingsNative;

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialScreentoneSettingsNative;->getGridSize()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    .line 163
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ScreentoneSection;->this$0:Lcom/brakefield/painter/brushes/settings/SpecialSettings;

    iget-object p1, p1, Lcom/brakefield/painter/brushes/settings/SpecialSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;->screentoneSettings:Lcom/brakefield/painter/databinding/SettingsBrushPixelSnapBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/SettingsBrushPixelSnapBinding;->scaleWithSizeToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ScreentoneSection;->screentoneSettings:Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialScreentoneSettingsNative;

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialScreentoneSettingsNative;->getScaleWithSize()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;->setChecked(Z)V

    .line 164
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ScreentoneSection;->this$0:Lcom/brakefield/painter/brushes/settings/SpecialSettings;

    iget-object p1, p1, Lcom/brakefield/painter/brushes/settings/SpecialSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;->screentoneSettings:Lcom/brakefield/painter/databinding/SettingsBrushPixelSnapBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/SettingsBrushPixelSnapBinding;->angleSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ScreentoneSection;->screentoneSettings:Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialScreentoneSettingsNative;

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialScreentoneSettingsNative;->getAngle()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    return-void
.end method

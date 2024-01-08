.class Lcom/brakefield/painter/brushes/settings/SpecialSettings$ParticlesSection;
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
    name = "ParticlesSection"
.end annotation


# instance fields
.field private particleSettings:Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialParticleSettingsNative;

.field final synthetic this$0:Lcom/brakefield/painter/brushes/settings/SpecialSettings;


# direct methods
.method private constructor <init>(Lcom/brakefield/painter/brushes/settings/SpecialSettings;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ParticlesSection;->this$0:Lcom/brakefield/painter/brushes/settings/SpecialSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/brakefield/painter/brushes/settings/SpecialSettings;Lcom/brakefield/painter/brushes/settings/SpecialSettings$1;)V
    .locals 0

    .line 168
    invoke-direct {p0, p1}, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ParticlesSection;-><init>(Lcom/brakefield/painter/brushes/settings/SpecialSettings;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$setup$0$com-brakefield-painter-brushes-settings-SpecialSettings$ParticlesSection(F)Ljava/lang/String;
    .locals 1

    .line 179
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ParticlesSection;->particleSettings:Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialParticleSettingsNative;

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialParticleSettingsNative;->getAttractors()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$setup$1$com-brakefield-painter-brushes-settings-SpecialSettings$ParticlesSection(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 181
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ParticlesSection;->particleSettings:Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialParticleSettingsNative;

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialParticleSettingsNative;->setAttractors(I)V

    .line 182
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ParticlesSection;->this$0:Lcom/brakefield/painter/brushes/settings/SpecialSettings;

    iget-object p1, p1, Lcom/brakefield/painter/brushes/settings/SpecialSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;->particleSettings:Lcom/brakefield/painter/databinding/SettingsBrushParticlesBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/SettingsBrushParticlesBinding;->attractorsSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    new-instance p2, Ljava/lang/StringBuilder;

    const/4 p3, 0x0

    sget-object p3, Lcom/google/android/exoplayer2/metadata/icy/OZ/XlYsLoHtRjl;->ebgccsmiRQRqhUA:Ljava/lang/String;

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ParticlesSection;->particleSettings:Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialParticleSettingsNative;

    invoke-virtual {p3}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialParticleSettingsNative;->getAttractors()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setValueLabel(Ljava/lang/String;)V

    .line 183
    invoke-static {}, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->updatePreview()V

    return-void
.end method

.method synthetic lambda$setup$2$com-brakefield-painter-brushes-settings-SpecialSettings$ParticlesSection(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 189
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ParticlesSection;->particleSettings:Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialParticleSettingsNative;

    invoke-virtual {p1, p2}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialParticleSettingsNative;->setParticles(I)V

    .line 190
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ParticlesSection;->this$0:Lcom/brakefield/painter/brushes/settings/SpecialSettings;

    iget-object p1, p1, Lcom/brakefield/painter/brushes/settings/SpecialSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;->particleSettings:Lcom/brakefield/painter/databinding/SettingsBrushParticlesBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/SettingsBrushParticlesBinding;->particlesSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setValueLabel(Ljava/lang/String;)V

    .line 191
    invoke-static {}, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->updatePreview()V

    return-void
.end method

.method synthetic lambda$setup$3$com-brakefield-painter-brushes-settings-SpecialSettings$ParticlesSection(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 196
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ParticlesSection;->particleSettings:Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialParticleSettingsNative;

    int-to-float p3, p2

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p3, v0

    invoke-virtual {p1, p3}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialParticleSettingsNative;->setRadius(F)V

    .line 197
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ParticlesSection;->this$0:Lcom/brakefield/painter/brushes/settings/SpecialSettings;

    iget-object p1, p1, Lcom/brakefield/painter/brushes/settings/SpecialSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;->particleSettings:Lcom/brakefield/painter/databinding/SettingsBrushParticlesBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/SettingsBrushParticlesBinding;->radiusSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setValueLabel(Ljava/lang/String;)V

    .line 198
    invoke-static {}, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->updatePreview()V

    return-void
.end method

.method synthetic lambda$setup$4$com-brakefield-painter-brushes-settings-SpecialSettings$ParticlesSection(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 203
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ParticlesSection;->particleSettings:Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialParticleSettingsNative;

    int-to-float p3, p2

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p3, v0

    const v0, 0x3dcccccd    # 0.1f

    mul-float/2addr p3, v0

    invoke-virtual {p1, p3}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialParticleSettingsNative;->setMaxSize(F)V

    .line 204
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ParticlesSection;->this$0:Lcom/brakefield/painter/brushes/settings/SpecialSettings;

    iget-object p1, p1, Lcom/brakefield/painter/brushes/settings/SpecialSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;->particleSettings:Lcom/brakefield/painter/databinding/SettingsBrushParticlesBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/SettingsBrushParticlesBinding;->particleSizeSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setValueLabel(Ljava/lang/String;)V

    .line 205
    invoke-static {}, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->updatePreview()V

    return-void
.end method

.method synthetic lambda$setup$5$com-brakefield-painter-brushes-settings-SpecialSettings$ParticlesSection(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 211
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ParticlesSection;->particleSettings:Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialParticleSettingsNative;

    int-to-float p3, p2

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p3, v0

    invoke-virtual {p1, p3}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialParticleSettingsNative;->setOvershoot(F)V

    .line 212
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ParticlesSection;->this$0:Lcom/brakefield/painter/brushes/settings/SpecialSettings;

    iget-object p1, p1, Lcom/brakefield/painter/brushes/settings/SpecialSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;->particleSettings:Lcom/brakefield/painter/databinding/SettingsBrushParticlesBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/SettingsBrushParticlesBinding;->overshootSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setValueLabel(Ljava/lang/String;)V

    .line 213
    invoke-static {}, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->updatePreview()V

    return-void
.end method

.method public setup(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 4

    .line 175
    new-instance v0, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialParticleSettingsNative;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushSpecialParticleSettings()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialParticleSettingsNative;-><init>(J)V

    iput-object v0, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ParticlesSection;->particleSettings:Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialParticleSettingsNative;

    .line 177
    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ParticlesSection;->this$0:Lcom/brakefield/painter/brushes/settings/SpecialSettings;

    iget-object v0, v0, Lcom/brakefield/painter/brushes/settings/SpecialSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;->particleSettings:Lcom/brakefield/painter/databinding/SettingsBrushParticlesBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SettingsBrushParticlesBinding;->attractorsSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setMax(I)V

    .line 178
    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ParticlesSection;->this$0:Lcom/brakefield/painter/brushes/settings/SpecialSettings;

    iget-object v0, v0, Lcom/brakefield/painter/brushes/settings/SpecialSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;->particleSettings:Lcom/brakefield/painter/databinding/SettingsBrushParticlesBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SettingsBrushParticlesBinding;->attractorsSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    new-instance v2, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ParticlesSection$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ParticlesSection$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/brushes/settings/SpecialSettings$ParticlesSection;)V

    new-instance v3, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ParticlesSection$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ParticlesSection$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/brushes/settings/SpecialSettings$ParticlesSection;)V

    invoke-static {p1, v0, v1, v2, v3}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V

    .line 186
    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ParticlesSection;->this$0:Lcom/brakefield/painter/brushes/settings/SpecialSettings;

    iget-object v0, v0, Lcom/brakefield/painter/brushes/settings/SpecialSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;->particleSettings:Lcom/brakefield/painter/databinding/SettingsBrushParticlesBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SettingsBrushParticlesBinding;->particlesSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    const/16 v1, 0x190

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setMax(I)V

    .line 187
    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ParticlesSection;->this$0:Lcom/brakefield/painter/brushes/settings/SpecialSettings;

    iget-object v0, v0, Lcom/brakefield/painter/brushes/settings/SpecialSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;->particleSettings:Lcom/brakefield/painter/databinding/SettingsBrushParticlesBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SettingsBrushParticlesBinding;->particlesSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    new-instance v2, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ParticlesSection$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ParticlesSection$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/brushes/settings/SpecialSettings$ParticlesSection;)V

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v3, v2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V

    .line 194
    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ParticlesSection;->this$0:Lcom/brakefield/painter/brushes/settings/SpecialSettings;

    iget-object v0, v0, Lcom/brakefield/painter/brushes/settings/SpecialSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;->particleSettings:Lcom/brakefield/painter/databinding/SettingsBrushParticlesBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SettingsBrushParticlesBinding;->radiusSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    new-instance v2, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ParticlesSection$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ParticlesSection$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/brushes/settings/SpecialSettings$ParticlesSection;)V

    invoke-static {p1, v0, v1, v3, v2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V

    .line 201
    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ParticlesSection;->this$0:Lcom/brakefield/painter/brushes/settings/SpecialSettings;

    iget-object v0, v0, Lcom/brakefield/painter/brushes/settings/SpecialSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;->particleSettings:Lcom/brakefield/painter/databinding/SettingsBrushParticlesBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SettingsBrushParticlesBinding;->particleSizeSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    new-instance v2, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ParticlesSection$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ParticlesSection$$ExternalSyntheticLambda4;-><init>(Lcom/brakefield/painter/brushes/settings/SpecialSettings$ParticlesSection;)V

    invoke-static {p1, v0, v1, v3, v2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V

    .line 208
    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ParticlesSection;->this$0:Lcom/brakefield/painter/brushes/settings/SpecialSettings;

    iget-object v0, v0, Lcom/brakefield/painter/brushes/settings/SpecialSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;->particleSettings:Lcom/brakefield/painter/databinding/SettingsBrushParticlesBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SettingsBrushParticlesBinding;->overshootSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setMax(I)V

    .line 209
    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ParticlesSection;->this$0:Lcom/brakefield/painter/brushes/settings/SpecialSettings;

    iget-object v0, v0, Lcom/brakefield/painter/brushes/settings/SpecialSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;->particleSettings:Lcom/brakefield/painter/databinding/SettingsBrushParticlesBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SettingsBrushParticlesBinding;->overshootSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p2

    new-instance v1, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ParticlesSection$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ParticlesSection$$ExternalSyntheticLambda5;-><init>(Lcom/brakefield/painter/brushes/settings/SpecialSettings$ParticlesSection;)V

    invoke-static {p1, v0, p2, v3, v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V

    return-void
.end method

.method public update(Landroid/content/Context;)V
    .locals 3

    .line 219
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushUsesParticleSettings()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ParticlesSection;->this$0:Lcom/brakefield/painter/brushes/settings/SpecialSettings;

    iget-object p1, p1, Lcom/brakefield/painter/brushes/settings/SpecialSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;->particlesSection:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 220
    :cond_0
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ParticlesSection;->this$0:Lcom/brakefield/painter/brushes/settings/SpecialSettings;

    iget-object p1, p1, Lcom/brakefield/painter/brushes/settings/SpecialSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;->particlesSection:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 221
    :goto_0
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ParticlesSection;->this$0:Lcom/brakefield/painter/brushes/settings/SpecialSettings;

    iget-object p1, p1, Lcom/brakefield/painter/brushes/settings/SpecialSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;->particleSettings:Lcom/brakefield/painter/databinding/SettingsBrushParticlesBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/SettingsBrushParticlesBinding;->attractorsSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ParticlesSection;->particleSettings:Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialParticleSettingsNative;

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialParticleSettingsNative;->getAttractors()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    .line 222
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ParticlesSection;->this$0:Lcom/brakefield/painter/brushes/settings/SpecialSettings;

    iget-object p1, p1, Lcom/brakefield/painter/brushes/settings/SpecialSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;->particleSettings:Lcom/brakefield/painter/databinding/SettingsBrushParticlesBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/SettingsBrushParticlesBinding;->particlesSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ParticlesSection;->particleSettings:Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialParticleSettingsNative;

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialParticleSettingsNative;->getParticles()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    .line 223
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ParticlesSection;->this$0:Lcom/brakefield/painter/brushes/settings/SpecialSettings;

    iget-object p1, p1, Lcom/brakefield/painter/brushes/settings/SpecialSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;->particleSettings:Lcom/brakefield/painter/databinding/SettingsBrushParticlesBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/SettingsBrushParticlesBinding;->radiusSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ParticlesSection;->particleSettings:Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialParticleSettingsNative;

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialParticleSettingsNative;->getRadius()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    .line 224
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ParticlesSection;->this$0:Lcom/brakefield/painter/brushes/settings/SpecialSettings;

    iget-object p1, p1, Lcom/brakefield/painter/brushes/settings/SpecialSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;->particleSettings:Lcom/brakefield/painter/databinding/SettingsBrushParticlesBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/SettingsBrushParticlesBinding;->particleSizeSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ParticlesSection;->particleSettings:Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialParticleSettingsNative;

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialParticleSettingsNative;->getMaxSize()F

    move-result v0

    const v2, 0x3dcccccd    # 0.1f

    div-float/2addr v0, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    .line 225
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ParticlesSection;->this$0:Lcom/brakefield/painter/brushes/settings/SpecialSettings;

    iget-object p1, p1, Lcom/brakefield/painter/brushes/settings/SpecialSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;->particleSettings:Lcom/brakefield/painter/databinding/SettingsBrushParticlesBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/SettingsBrushParticlesBinding;->overshootSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ParticlesSection;->particleSettings:Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialParticleSettingsNative;

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialParticleSettingsNative;->getOvershoot()F

    move-result v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    return-void
.end method

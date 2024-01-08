.class Lcom/brakefield/painter/brushes/settings/SpecialSettings$FilterEffectsSection;
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
    name = "FilterEffectsSection"
.end annotation


# instance fields
.field private effectsSettings:Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialEffectsSettingsNative;

.field final synthetic this$0:Lcom/brakefield/painter/brushes/settings/SpecialSettings;


# direct methods
.method private constructor <init>(Lcom/brakefield/painter/brushes/settings/SpecialSettings;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$FilterEffectsSection;->this$0:Lcom/brakefield/painter/brushes/settings/SpecialSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/brakefield/painter/brushes/settings/SpecialSettings;Lcom/brakefield/painter/brushes/settings/SpecialSettings$1;)V
    .locals 0

    .line 229
    invoke-direct {p0, p1}, Lcom/brakefield/painter/brushes/settings/SpecialSettings$FilterEffectsSection;-><init>(Lcom/brakefield/painter/brushes/settings/SpecialSettings;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$setup$0$com-brakefield-painter-brushes-settings-SpecialSettings$FilterEffectsSection(Landroid/app/Activity;II)V
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$FilterEffectsSection;->effectsSettings:Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialEffectsSettingsNative;

    invoke-virtual {v0, p2}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialEffectsSettingsNative;->setTarget(I)V

    .line 243
    iget-object p2, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$FilterEffectsSection;->effectsSettings:Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialEffectsSettingsNative;

    invoke-virtual {p2, p3}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialEffectsSettingsNative;->setEffect(I)V

    .line 244
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/brushes/settings/SpecialSettings$FilterEffectsSection;->update(Landroid/content/Context;)V

    return-void
.end method

.method synthetic lambda$setup$1$com-brakefield-painter-brushes-settings-SpecialSettings$FilterEffectsSection(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroid/view/View;)V
    .locals 2

    .line 239
    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->dismissPopup()V

    .line 240
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/BrushFiltersViewController;

    invoke-direct {v0}, Lcom/brakefield/painter/ui/viewcontrollers/BrushFiltersViewController;-><init>()V

    .line 241
    new-instance v1, Lcom/brakefield/painter/brushes/settings/SpecialSettings$FilterEffectsSection$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Lcom/brakefield/painter/brushes/settings/SpecialSettings$FilterEffectsSection$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/brushes/settings/SpecialSettings$FilterEffectsSection;Landroid/app/Activity;)V

    invoke-virtual {v0, p2, p1, v1}, Lcom/brakefield/painter/ui/viewcontrollers/BrushFiltersViewController;->getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/ui/viewcontrollers/BrushFiltersViewController$OnFilterEffectSelectedListener;)Landroid/view/View;

    move-result-object v0

    .line 246
    invoke-virtual {p1, p2, v0, p3}, Lcom/brakefield/painter/ui/SimpleUI;->popup(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$setup$2$com-brakefield-painter-brushes-settings-SpecialSettings$FilterEffectsSection(Lcom/brakefield/painter/ui/SimpleUI;Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 252
    iget-object p2, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$FilterEffectsSection;->effectsSettings:Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialEffectsSettingsNative;

    int-to-float p4, p3

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p4, v0

    invoke-virtual {p2, p4}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialEffectsSettingsNative;->setValue(F)V

    .line 253
    iget-object p2, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$FilterEffectsSection;->this$0:Lcom/brakefield/painter/brushes/settings/SpecialSettings;

    iget-object p2, p2, Lcom/brakefield/painter/brushes/settings/SpecialSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;->filtersSettings:Lcom/brakefield/painter/databinding/SettingsBrushFilterEffectsBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/SettingsBrushFilterEffectsBinding;->strengthSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {p2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->isMiddlePivot()Z

    move-result p2

    if-eqz p2, :cond_0

    mul-int/lit8 p3, p3, 0x2

    add-int/lit8 p3, p3, -0x64

    .line 254
    :cond_0
    iget-object p2, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$FilterEffectsSection;->this$0:Lcom/brakefield/painter/brushes/settings/SpecialSettings;

    iget-object p2, p2, Lcom/brakefield/painter/brushes/settings/SpecialSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;->filtersSettings:Lcom/brakefield/painter/databinding/SettingsBrushFilterEffectsBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/SettingsBrushFilterEffectsBinding;->strengthSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setValueLabel(Ljava/lang/String;)V

    .line 255
    invoke-static {}, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->updatePreview()V

    .line 256
    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    return-void
.end method

.method synthetic lambda$setup$3$com-brakefield-painter-brushes-settings-SpecialSettings$FilterEffectsSection(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    .line 260
    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->dismissPopup()V

    .line 261
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$FilterEffectsSection;->effectsSettings:Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialEffectsSettingsNative;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialEffectsSettingsNative;->setEffect(I)V

    .line 262
    invoke-static {}, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->updatePreview()V

    .line 263
    invoke-virtual {p0, p2}, Lcom/brakefield/painter/brushes/settings/SpecialSettings$FilterEffectsSection;->update(Landroid/content/Context;)V

    return-void
.end method

.method public setup(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 4

    .line 236
    new-instance v0, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialEffectsSettingsNative;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushSpecialEffectsSettings()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialEffectsSettingsNative;-><init>(J)V

    iput-object v0, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$FilterEffectsSection;->effectsSettings:Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialEffectsSettingsNative;

    .line 238
    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$FilterEffectsSection;->this$0:Lcom/brakefield/painter/brushes/settings/SpecialSettings;

    iget-object v0, v0, Lcom/brakefield/painter/brushes/settings/SpecialSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;->filtersSettings:Lcom/brakefield/painter/databinding/SettingsBrushFilterEffectsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SettingsBrushFilterEffectsBinding;->filterEffectsSelector:Landroid/widget/Button;

    new-instance v1, Lcom/brakefield/painter/brushes/settings/SpecialSettings$FilterEffectsSection$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2, p1}, Lcom/brakefield/painter/brushes/settings/SpecialSettings$FilterEffectsSection$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/brushes/settings/SpecialSettings$FilterEffectsSection;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$FilterEffectsSection;->this$0:Lcom/brakefield/painter/brushes/settings/SpecialSettings;

    iget-object v0, v0, Lcom/brakefield/painter/brushes/settings/SpecialSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;->filtersSettings:Lcom/brakefield/painter/databinding/SettingsBrushFilterEffectsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SettingsBrushFilterEffectsBinding;->filterEffectsSelector:Landroid/widget/Button;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 250
    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$FilterEffectsSection;->this$0:Lcom/brakefield/painter/brushes/settings/SpecialSettings;

    iget-object v0, v0, Lcom/brakefield/painter/brushes/settings/SpecialSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;->filtersSettings:Lcom/brakefield/painter/databinding/SettingsBrushFilterEffectsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SettingsBrushFilterEffectsBinding;->strengthSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    new-instance v2, Lcom/brakefield/painter/brushes/settings/SpecialSettings$FilterEffectsSection$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p2}, Lcom/brakefield/painter/brushes/settings/SpecialSettings$FilterEffectsSection$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/brushes/settings/SpecialSettings$FilterEffectsSection;Lcom/brakefield/painter/ui/SimpleUI;)V

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v3, v2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V

    .line 259
    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$FilterEffectsSection;->this$0:Lcom/brakefield/painter/brushes/settings/SpecialSettings;

    iget-object v0, v0, Lcom/brakefield/painter/brushes/settings/SpecialSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;->filtersSettings:Lcom/brakefield/painter/databinding/SettingsBrushFilterEffectsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SettingsBrushFilterEffectsBinding;->removeButton:Landroid/widget/Button;

    new-instance v1, Lcom/brakefield/painter/brushes/settings/SpecialSettings$FilterEffectsSection$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p2, p1}, Lcom/brakefield/painter/brushes/settings/SpecialSettings$FilterEffectsSection$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/brushes/settings/SpecialSettings$FilterEffectsSection;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$FilterEffectsSection;->this$0:Lcom/brakefield/painter/brushes/settings/SpecialSettings;

    iget-object p1, p1, Lcom/brakefield/painter/brushes/settings/SpecialSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;->filtersSettings:Lcom/brakefield/painter/databinding/SettingsBrushFilterEffectsBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/SettingsBrushFilterEffectsBinding;->removeButton:Landroid/widget/Button;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    return-void
.end method

.method public update(Landroid/content/Context;)V
    .locals 2

    .line 270
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$FilterEffectsSection;->effectsSettings:Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialEffectsSettingsNative;

    invoke-virtual {p1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialEffectsSettingsNative;->getEffect()I

    move-result p1

    if-eqz p1, :cond_0

    .line 272
    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$FilterEffectsSection;->this$0:Lcom/brakefield/painter/brushes/settings/SpecialSettings;

    iget-object v0, v0, Lcom/brakefield/painter/brushes/settings/SpecialSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;->filtersSettings:Lcom/brakefield/painter/databinding/SettingsBrushFilterEffectsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SettingsBrushFilterEffectsBinding;->settings:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation;->setVisible(Landroid/view/View;)V

    goto :goto_0

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$FilterEffectsSection;->this$0:Lcom/brakefield/painter/brushes/settings/SpecialSettings;

    iget-object v0, v0, Lcom/brakefield/painter/brushes/settings/SpecialSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;->filtersSettings:Lcom/brakefield/painter/databinding/SettingsBrushFilterEffectsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SettingsBrushFilterEffectsBinding;->settings:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation;->setGone(Landroid/view/View;)V

    .line 276
    :goto_0
    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$FilterEffectsSection;->this$0:Lcom/brakefield/painter/brushes/settings/SpecialSettings;

    iget-object v0, v0, Lcom/brakefield/painter/brushes/settings/SpecialSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;->filtersSettings:Lcom/brakefield/painter/databinding/SettingsBrushFilterEffectsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SettingsBrushFilterEffectsBinding;->filterEffectsSelector:Landroid/widget/Button;

    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->getFilterName(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ResourceHelper;->getStringId(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$FilterEffectsSection;->this$0:Lcom/brakefield/painter/brushes/settings/SpecialSettings;

    iget-object p1, p1, Lcom/brakefield/painter/brushes/settings/SpecialSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;->filtersSettings:Lcom/brakefield/painter/databinding/SettingsBrushFilterEffectsBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/SettingsBrushFilterEffectsBinding;->strengthSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$FilterEffectsSection;->effectsSettings:Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialEffectsSettingsNative;

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialEffectsSettingsNative;->isMiddlePivot()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setMiddlePivot(Z)V

    .line 278
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$FilterEffectsSection;->effectsSettings:Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialEffectsSettingsNative;

    invoke-virtual {p1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialEffectsSettingsNative;->getValue()F

    move-result p1

    .line 279
    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$FilterEffectsSection;->this$0:Lcom/brakefield/painter/brushes/settings/SpecialSettings;

    iget-object v0, v0, Lcom/brakefield/painter/brushes/settings/SpecialSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;->filtersSettings:Lcom/brakefield/painter/databinding/SettingsBrushFilterEffectsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SettingsBrushFilterEffectsBinding;->strengthSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->isMiddlePivot()Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$FilterEffectsSection;->this$0:Lcom/brakefield/painter/brushes/settings/SpecialSettings;

    iget-object v0, v0, Lcom/brakefield/painter/brushes/settings/SpecialSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;->filtersSettings:Lcom/brakefield/painter/databinding/SettingsBrushFilterEffectsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SettingsBrushFilterEffectsBinding;->strengthSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    return-void
.end method

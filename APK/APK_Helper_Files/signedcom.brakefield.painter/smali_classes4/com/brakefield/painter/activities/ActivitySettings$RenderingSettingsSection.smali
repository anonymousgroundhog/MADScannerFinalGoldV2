.class Lcom/brakefield/painter/activities/ActivitySettings$RenderingSettingsSection;
.super Ljava/lang/Object;
.source "ActivitySettings.java"

# interfaces
.implements Lcom/brakefield/painter/activities/ActivitySettings$SettingsSection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/activities/ActivitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RenderingSettingsSection"
.end annotation


# instance fields
.field spinnerAdapter:Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;

.field final synthetic this$0:Lcom/brakefield/painter/activities/ActivitySettings;


# direct methods
.method private constructor <init>(Lcom/brakefield/painter/activities/ActivitySettings;)V
    .locals 0

    .line 459
    iput-object p1, p0, Lcom/brakefield/painter/activities/ActivitySettings$RenderingSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/brakefield/painter/activities/ActivitySettings;Lcom/brakefield/painter/activities/ActivitySettings$1;)V
    .locals 0

    .line 459
    invoke-direct {p0, p1}, Lcom/brakefield/painter/activities/ActivitySettings$RenderingSettingsSection;-><init>(Lcom/brakefield/painter/activities/ActivitySettings;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$setup$0$com-brakefield-painter-activities-ActivitySettings$RenderingSettingsSection(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 489
    invoke-static {p2}, Lcom/brakefield/painter/PainterLib;->setGammaCorrection(Z)V

    .line 490
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivitySettings$RenderingSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 491
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const/4 v0, 0x0

    sget-object v0, Lcom/fasterxml/jackson/core/base/wdxk/XdOzfHnSj;->dGSmbIjpRF:Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method synthetic lambda$setup$1$com-brakefield-painter-activities-ActivitySettings$RenderingSettingsSection(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 497
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivitySettings$RenderingSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {p1}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1900(Lcom/brakefield/painter/activities/ActivitySettings;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "PREF_COLOR_DEPTH_64"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 498
    invoke-static {p2}, Lcom/brakefield/painter/PainterLib;->setUseColorDepth64(Z)V

    return-void
.end method

.method public refresh()V
    .locals 2

    .line 506
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$RenderingSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->renderingSettings:Lcom/brakefield/painter/databinding/RenderingSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/RenderingSettingsBinding;->card:Landroidx/cardview/widget/CardView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getForegroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    .line 508
    invoke-static {}, Lcom/brakefield/painter/ColorProfiles;->getCurrentColorProfile()I

    move-result v0

    .line 509
    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivitySettings$RenderingSettingsSection;->spinnerAdapter:Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;->getItemPositionFromReturnObject(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 510
    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivitySettings$RenderingSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v1}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->renderingSettings:Lcom/brakefield/painter/databinding/RenderingSettingsBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/RenderingSettingsBinding;->colorModesDropdown:Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;->getSelectedItemPosition()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 511
    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivitySettings$RenderingSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v1}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->renderingSettings:Lcom/brakefield/painter/databinding/RenderingSettingsBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/RenderingSettingsBinding;->colorModesDropdown:Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;

    invoke-virtual {v1, v0}, Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;->setSelection(I)V

    :cond_0
    return-void
.end method

.method public setup()V
    .locals 4

    .line 466
    new-instance v0, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;

    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivitySettings$RenderingSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {}, Lcom/brakefield/painter/ColorProfiles;->getSpinnerItems()[Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;-><init>(Landroid/content/Context;[Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;)V

    iput-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$RenderingSettingsSection;->spinnerAdapter:Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;

    .line 468
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$RenderingSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->renderingSettings:Lcom/brakefield/painter/databinding/RenderingSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/RenderingSettingsBinding;->colorModesDropdown:Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;

    new-instance v1, Lcom/brakefield/painter/activities/ActivitySettings$RenderingSettingsSection$1;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/activities/ActivitySettings$RenderingSettingsSection$1;-><init>(Lcom/brakefield/painter/activities/ActivitySettings$RenderingSettingsSection;)V

    iget-object v2, p0, Lcom/brakefield/painter/activities/ActivitySettings$RenderingSettingsSection;->spinnerAdapter:Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;

    .line 485
    invoke-static {}, Lcom/brakefield/painter/ColorProfiles;->getCurrentColorProfile()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 468
    invoke-static {v0, v1, v2, v3}, Lcom/brakefield/infinitestudio/ui/UIManager;->setupDropdown(Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;Landroid/widget/AdapterView$OnItemSelectedListener;Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;Ljava/lang/Object;)V

    .line 487
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$RenderingSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->renderingSettings:Lcom/brakefield/painter/databinding/RenderingSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/RenderingSettingsBinding;->gammaCorrectionToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    new-instance v1, Lcom/brakefield/painter/activities/ActivitySettings$RenderingSettingsSection$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/activities/ActivitySettings$RenderingSettingsSection$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/activities/ActivitySettings$RenderingSettingsSection;)V

    .line 493
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getGammaCorrection()Z

    move-result v2

    .line 487
    invoke-static {v0, v1, v2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setupToggle(Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;Landroid/widget/CompoundButton$OnCheckedChangeListener;Z)V

    .line 495
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$RenderingSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->renderingSettings:Lcom/brakefield/painter/databinding/RenderingSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/RenderingSettingsBinding;->colorDepth64Toggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    new-instance v1, Lcom/brakefield/painter/activities/ActivitySettings$RenderingSettingsSection$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/activities/ActivitySettings$RenderingSettingsSection$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/activities/ActivitySettings$RenderingSettingsSection;)V

    .line 500
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getUseColorDepth64()Z

    move-result v2

    .line 495
    invoke-static {v0, v1, v2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setupToggle(Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;Landroid/widget/CompoundButton$OnCheckedChangeListener;Z)V

    return-void
.end method

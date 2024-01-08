.class Lcom/brakefield/painter/activities/ActivitySettings$SavingSettingsSection;
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
    name = "SavingSettingsSection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/activities/ActivitySettings;


# direct methods
.method private constructor <init>(Lcom/brakefield/painter/activities/ActivitySettings;)V
    .locals 0

    .line 518
    iput-object p1, p0, Lcom/brakefield/painter/activities/ActivitySettings$SavingSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/brakefield/painter/activities/ActivitySettings;Lcom/brakefield/painter/activities/ActivitySettings$1;)V
    .locals 0

    .line 518
    invoke-direct {p0, p1}, Lcom/brakefield/painter/activities/ActivitySettings$SavingSettingsSection;-><init>(Lcom/brakefield/painter/activities/ActivitySettings;)V

    return-void
.end method

.method static synthetic lambda$setup$0(F)Ljava/lang/String;
    .locals 2

    const/high16 v0, 0x41300000    # 11.0f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    const/16 v0, 0xb

    const/4 v1, -0x1

    if-ne p0, v0, :cond_0

    move p0, v1

    :cond_0
    if-ne p0, v1, :cond_1

    const p0, 0x7f120b1d

    .line 528
    invoke-static {p0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-nez p0, :cond_2

    const p0, 0x7f1209af

    .line 529
    invoke-static {p0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 530
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$setup$2(Landroid/content/SharedPreferences;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 546
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "PREF_PROMPT_SAVE_CHANGES"

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method synthetic lambda$setup$1$com-brakefield-painter-activities-ActivitySettings$SavingSettingsSection(Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Landroid/content/SharedPreferences;Landroid/widget/SeekBar;IZ)V
    .locals 2

    .line 537
    iget-object p5, p0, Lcom/brakefield/painter/activities/ActivitySettings$SavingSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {p5}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object p5

    iget-object p5, p5, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->savingSettings:Lcom/brakefield/painter/databinding/SavingSettingsBinding;

    iget-object p5, p5, Lcom/brakefield/painter/databinding/SavingSettingsBinding;->versionHistorySlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    sget-object v1, Lcom/brakefield/painter/ui/cZ/JtBOMbAc;->mZBbWXZ:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-float v1, p4

    invoke-virtual {p3}, Landroid/widget/SeekBar;->getMax()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr v1, p3

    invoke-interface {p1, v1}, Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;->getDisplayValue(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setValueLabel(Ljava/lang/String;)V

    const/16 p1, 0xb

    if-ne p4, p1, :cond_0

    const/4 p4, -0x1

    .line 540
    :cond_0
    invoke-static {p4}, Lcom/brakefield/painter/PainterLib;->setMaxProjectHistory(I)V

    .line 541
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "PREF_SAVE_MAXIUMUM_HISTORY"

    invoke-interface {p1, p2, p4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public refresh()V
    .locals 2

    .line 553
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$SavingSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->savingSettings:Lcom/brakefield/painter/databinding/SavingSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SavingSettingsBinding;->card:Landroidx/cardview/widget/CardView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getForegroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    .line 555
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getMaxProjectHistory()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0xb

    .line 557
    :cond_0
    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivitySettings$SavingSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v1}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->savingSettings:Lcom/brakefield/painter/databinding/SavingSettingsBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/SavingSettingsBinding;->versionHistorySlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {v1, v0}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    return-void
.end method

.method public setup()V
    .locals 6

    .line 523
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$SavingSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 525
    new-instance v1, Lcom/brakefield/painter/activities/ActivitySettings$SavingSettingsSection$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/brakefield/painter/activities/ActivitySettings$SavingSettingsSection$$ExternalSyntheticLambda0;-><init>()V

    .line 533
    iget-object v2, p0, Lcom/brakefield/painter/activities/ActivitySettings$SavingSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v2}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->savingSettings:Lcom/brakefield/painter/databinding/SavingSettingsBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/SavingSettingsBinding;->versionHistorySlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setMax(I)V

    .line 534
    iget-object v2, p0, Lcom/brakefield/painter/activities/ActivitySettings$SavingSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v2}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->savingSettings:Lcom/brakefield/painter/databinding/SavingSettingsBinding;

    iget-object v3, v3, Lcom/brakefield/painter/databinding/SavingSettingsBinding;->versionHistorySlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    new-instance v4, Lcom/brakefield/painter/activities/ActivitySettings$SavingSettingsSection$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, v1, v0}, Lcom/brakefield/painter/activities/ActivitySettings$SavingSettingsSection$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/activities/ActivitySettings$SavingSettingsSection;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Landroid/content/SharedPreferences;)V

    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v1, v4}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V

    .line 544
    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivitySettings$SavingSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v1}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->savingSettings:Lcom/brakefield/painter/databinding/SavingSettingsBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/SavingSettingsBinding;->showSaveChangesPromptToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    new-instance v2, Lcom/brakefield/painter/activities/ActivitySettings$SavingSettingsSection$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lcom/brakefield/painter/activities/ActivitySettings$SavingSettingsSection$$ExternalSyntheticLambda2;-><init>(Landroid/content/SharedPreferences;)V

    const-string v3, "PREF_PROMPT_SAVE_CHANGES"

    const/4 v4, 0x0

    .line 548
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 544
    invoke-static {v1, v2, v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setupToggle(Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;Landroid/widget/CompoundButton$OnCheckedChangeListener;Z)V

    return-void
.end method

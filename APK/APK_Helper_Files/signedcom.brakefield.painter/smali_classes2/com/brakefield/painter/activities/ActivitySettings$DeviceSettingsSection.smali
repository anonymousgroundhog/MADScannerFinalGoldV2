.class Lcom/brakefield/painter/activities/ActivitySettings$DeviceSettingsSection;
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
    name = "DeviceSettingsSection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/activities/ActivitySettings;


# direct methods
.method private constructor <init>(Lcom/brakefield/painter/activities/ActivitySettings;)V
    .locals 0

    .line 820
    iput-object p1, p0, Lcom/brakefield/painter/activities/ActivitySettings$DeviceSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/brakefield/painter/activities/ActivitySettings;Lcom/brakefield/painter/activities/ActivitySettings$1;)V
    .locals 0

    .line 820
    invoke-direct {p0, p1}, Lcom/brakefield/painter/activities/ActivitySettings$DeviceSettingsSection;-><init>(Lcom/brakefield/painter/activities/ActivitySettings;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$setup$0$com-brakefield-painter-activities-ActivitySettings$DeviceSettingsSection(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 827
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivitySettings$DeviceSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {p1}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1900(Lcom/brakefield/painter/activities/ActivitySettings;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "PREF_DISABLE_BACK"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public refresh()V
    .locals 2

    .line 846
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$DeviceSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->deviceSettings:Lcom/brakefield/painter/databinding/DeviceSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/DeviceSettingsBinding;->settingsHardwareCard:Landroidx/cardview/widget/CardView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getForegroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    return-void
.end method

.method public setup()V
    .locals 6

    .line 825
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$DeviceSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->deviceSettings:Lcom/brakefield/painter/databinding/DeviceSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/DeviceSettingsBinding;->disableBackButtonToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    new-instance v1, Lcom/brakefield/painter/activities/ActivitySettings$DeviceSettingsSection$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/activities/ActivitySettings$DeviceSettingsSection$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/activities/ActivitySettings$DeviceSettingsSection;)V

    iget-object v2, p0, Lcom/brakefield/painter/activities/ActivitySettings$DeviceSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    .line 829
    invoke-static {v2}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1900(Lcom/brakefield/painter/activities/ActivitySettings;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "PREF_DISABLE_BACK"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 825
    invoke-static {v0, v1, v2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setupToggle(Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;Landroid/widget/CompoundButton$OnCheckedChangeListener;Z)V

    .line 831
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$DeviceSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->deviceSettings:Lcom/brakefield/painter/databinding/DeviceSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/DeviceSettingsBinding;->volumeKeysDropdown:Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;

    new-instance v1, Lcom/brakefield/painter/activities/ActivitySettings$DeviceSettingsSection$1;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/activities/ActivitySettings$DeviceSettingsSection$1;-><init>(Lcom/brakefield/painter/activities/ActivitySettings$DeviceSettingsSection;)V

    new-instance v2, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;

    iget-object v3, p0, Lcom/brakefield/painter/activities/ActivitySettings$DeviceSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    const v5, 0x7f030011

    invoke-direct {v2, v3, v5}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;-><init>(Landroid/content/Context;I)V

    iget-object v3, p0, Lcom/brakefield/painter/activities/ActivitySettings$DeviceSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    .line 841
    invoke-static {v3}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1900(Lcom/brakefield/painter/activities/ActivitySettings;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v5, "PREF_VOLUME_MODE"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 831
    invoke-static {v0, v1, v2, v3}, Lcom/brakefield/infinitestudio/ui/UIManager;->setupDropdown(Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;Landroid/widget/AdapterView$OnItemSelectedListener;Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;Ljava/lang/Object;)V

    return-void
.end method

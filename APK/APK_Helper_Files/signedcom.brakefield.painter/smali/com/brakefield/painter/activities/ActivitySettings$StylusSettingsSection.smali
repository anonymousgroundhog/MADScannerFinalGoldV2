.class Lcom/brakefield/painter/activities/ActivitySettings$StylusSettingsSection;
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
    name = "StylusSettingsSection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/activities/ActivitySettings;


# direct methods
.method private constructor <init>(Lcom/brakefield/painter/activities/ActivitySettings;)V
    .locals 0

    .line 680
    iput-object p1, p0, Lcom/brakefield/painter/activities/ActivitySettings$StylusSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/brakefield/painter/activities/ActivitySettings;Lcom/brakefield/painter/activities/ActivitySettings$1;)V
    .locals 0

    .line 680
    invoke-direct {p0, p1}, Lcom/brakefield/painter/activities/ActivitySettings$StylusSettingsSection;-><init>(Lcom/brakefield/painter/activities/ActivitySettings;)V

    return-void
.end method


# virtual methods
.method public refresh()V
    .locals 2

    .line 728
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$StylusSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->stylusSettings:Lcom/brakefield/painter/databinding/StylusSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/StylusSettingsBinding;->card:Landroidx/cardview/widget/CardView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getForegroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    return-void
.end method

.method public setup()V
    .locals 7

    .line 685
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$StylusSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1900(Lcom/brakefield/painter/activities/ActivitySettings;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PREF_USED_STYLUS"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 687
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$StylusSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->stylusSettings:Lcom/brakefield/painter/databinding/StylusSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/StylusSettingsBinding;->card:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0, v2}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 689
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$StylusSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->stylusSettings:Lcom/brakefield/painter/databinding/StylusSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/StylusSettingsBinding;->fingerModeDropdown:Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;

    new-instance v1, Lcom/brakefield/painter/activities/ActivitySettings$StylusSettingsSection$1;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/activities/ActivitySettings$StylusSettingsSection$1;-><init>(Lcom/brakefield/painter/activities/ActivitySettings$StylusSettingsSection;)V

    new-instance v3, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;

    iget-object v4, p0, Lcom/brakefield/painter/activities/ActivitySettings$StylusSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    const v5, 0x7f030006

    invoke-direct {v3, v4, v5}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;-><init>(Landroid/content/Context;I)V

    iget-object v4, p0, Lcom/brakefield/painter/activities/ActivitySettings$StylusSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    .line 699
    invoke-static {v4}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1900(Lcom/brakefield/painter/activities/ActivitySettings;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "PREF_FINGER_MODE"

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 689
    invoke-static {v0, v1, v3, v4}, Lcom/brakefield/infinitestudio/ui/UIManager;->setupDropdown(Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;Landroid/widget/AdapterView$OnItemSelectedListener;Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;Ljava/lang/Object;)V

    .line 701
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$StylusSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->stylusSettings:Lcom/brakefield/painter/databinding/StylusSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/StylusSettingsBinding;->stylusFrontButtonDropdown:Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;

    new-instance v1, Lcom/brakefield/painter/activities/ActivitySettings$StylusSettingsSection$2;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/activities/ActivitySettings$StylusSettingsSection$2;-><init>(Lcom/brakefield/painter/activities/ActivitySettings$StylusSettingsSection;)V

    new-instance v3, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;

    iget-object v4, p0, Lcom/brakefield/painter/activities/ActivitySettings$StylusSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    const v5, 0x7f030010

    invoke-direct {v3, v4, v5}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;-><init>(Landroid/content/Context;I)V

    iget-object v4, p0, Lcom/brakefield/painter/activities/ActivitySettings$StylusSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    .line 711
    invoke-static {v4}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1900(Lcom/brakefield/painter/activities/ActivitySettings;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v6, "PREF_STYLUS_BUTTON_1_MODE"

    invoke-interface {v4, v6, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 701
    invoke-static {v0, v1, v3, v4}, Lcom/brakefield/infinitestudio/ui/UIManager;->setupDropdown(Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;Landroid/widget/AdapterView$OnItemSelectedListener;Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;Ljava/lang/Object;)V

    .line 713
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$StylusSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->stylusSettings:Lcom/brakefield/painter/databinding/StylusSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/StylusSettingsBinding;->stylusBackButtonDropdown:Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;

    new-instance v1, Lcom/brakefield/painter/activities/ActivitySettings$StylusSettingsSection$3;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/activities/ActivitySettings$StylusSettingsSection$3;-><init>(Lcom/brakefield/painter/activities/ActivitySettings$StylusSettingsSection;)V

    new-instance v3, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;

    iget-object v4, p0, Lcom/brakefield/painter/activities/ActivitySettings$StylusSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-direct {v3, v4, v5}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;-><init>(Landroid/content/Context;I)V

    iget-object v4, p0, Lcom/brakefield/painter/activities/ActivitySettings$StylusSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    .line 723
    invoke-static {v4}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1900(Lcom/brakefield/painter/activities/ActivitySettings;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "PREF_STYLUS_BUTTON_2_MODE"

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 713
    invoke-static {v0, v1, v3, v2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setupDropdown(Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;Landroid/widget/AdapterView$OnItemSelectedListener;Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;Ljava/lang/Object;)V

    return-void
.end method

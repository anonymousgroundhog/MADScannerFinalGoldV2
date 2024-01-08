.class Lcom/brakefield/painter/activities/ActivitySettings$GesturesSettingsSection;
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
    name = "GesturesSettingsSection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/activities/ActivitySettings;


# direct methods
.method private constructor <init>(Lcom/brakefield/painter/activities/ActivitySettings;)V
    .locals 0

    .line 641
    iput-object p1, p0, Lcom/brakefield/painter/activities/ActivitySettings$GesturesSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/brakefield/painter/activities/ActivitySettings;Lcom/brakefield/painter/activities/ActivitySettings$1;)V
    .locals 0

    .line 641
    invoke-direct {p0, p1}, Lcom/brakefield/painter/activities/ActivitySettings$GesturesSettingsSection;-><init>(Lcom/brakefield/painter/activities/ActivitySettings;)V

    return-void
.end method


# virtual methods
.method public refresh()V
    .locals 2

    .line 673
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$GesturesSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->gesturesSettings:Lcom/brakefield/painter/databinding/GesturesSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/GesturesSettingsBinding;->card:Landroidx/cardview/widget/CardView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getForegroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    return-void
.end method

.method public setup()V
    .locals 6

    .line 646
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$GesturesSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->gesturesSettings:Lcom/brakefield/painter/databinding/GesturesSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/GesturesSettingsBinding;->doubleTapDropdown:Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;

    new-instance v1, Lcom/brakefield/painter/activities/ActivitySettings$GesturesSettingsSection$1;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/activities/ActivitySettings$GesturesSettingsSection$1;-><init>(Lcom/brakefield/painter/activities/ActivitySettings$GesturesSettingsSection;)V

    new-instance v2, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;

    iget-object v3, p0, Lcom/brakefield/painter/activities/ActivitySettings$GesturesSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    const v4, 0x7f030007

    invoke-direct {v2, v3, v4}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;-><init>(Landroid/content/Context;I)V

    iget-object v3, p0, Lcom/brakefield/painter/activities/ActivitySettings$GesturesSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    .line 656
    invoke-static {v3}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1900(Lcom/brakefield/painter/activities/ActivitySettings;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "PREF_DOUBLE_TAP_MODE"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 646
    invoke-static {v0, v1, v2, v3}, Lcom/brakefield/infinitestudio/ui/UIManager;->setupDropdown(Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;Landroid/widget/AdapterView$OnItemSelectedListener;Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;Ljava/lang/Object;)V

    .line 658
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$GesturesSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->gesturesSettings:Lcom/brakefield/painter/databinding/GesturesSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/GesturesSettingsBinding;->longpressDropdown:Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;

    new-instance v1, Lcom/brakefield/painter/activities/ActivitySettings$GesturesSettingsSection$2;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/activities/ActivitySettings$GesturesSettingsSection$2;-><init>(Lcom/brakefield/painter/activities/ActivitySettings$GesturesSettingsSection;)V

    new-instance v2, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;

    iget-object v3, p0, Lcom/brakefield/painter/activities/ActivitySettings$GesturesSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    const v4, 0x7f03000e

    invoke-direct {v2, v3, v4}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;-><init>(Landroid/content/Context;I)V

    iget-object v3, p0, Lcom/brakefield/painter/activities/ActivitySettings$GesturesSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    .line 668
    invoke-static {v3}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1900(Lcom/brakefield/painter/activities/ActivitySettings;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "PREF_LONGPRESS_MODE"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 658
    invoke-static {v0, v1, v2, v3}, Lcom/brakefield/infinitestudio/ui/UIManager;->setupDropdown(Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;Landroid/widget/AdapterView$OnItemSelectedListener;Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;Ljava/lang/Object;)V

    return-void
.end method

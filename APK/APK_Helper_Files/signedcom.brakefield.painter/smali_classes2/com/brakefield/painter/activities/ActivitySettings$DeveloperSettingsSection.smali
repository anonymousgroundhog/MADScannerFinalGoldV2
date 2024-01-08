.class Lcom/brakefield/painter/activities/ActivitySettings$DeveloperSettingsSection;
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
    name = "DeveloperSettingsSection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/activities/ActivitySettings;


# direct methods
.method private constructor <init>(Lcom/brakefield/painter/activities/ActivitySettings;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/brakefield/painter/activities/ActivitySettings$DeveloperSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/brakefield/painter/activities/ActivitySettings;Lcom/brakefield/painter/activities/ActivitySettings$1;)V
    .locals 0

    .line 180
    invoke-direct {p0, p1}, Lcom/brakefield/painter/activities/ActivitySettings$DeveloperSettingsSection;-><init>(Lcom/brakefield/painter/activities/ActivitySettings;)V

    return-void
.end method

.method private getInternalSettings()Lcom/infinite/app/ui/settings/SettingsAdapter$Provider;
    .locals 1

    .line 236
    new-instance v0, Lcom/brakefield/painter/activities/ActivitySettings$DeveloperSettingsSection$2;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/activities/ActivitySettings$DeveloperSettingsSection$2;-><init>(Lcom/brakefield/painter/activities/ActivitySettings$DeveloperSettingsSection;)V

    return-object v0
.end method

.method static synthetic lambda$setup$0(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 186
    sput-boolean p1, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->DEBUG_UI_PRESS:Z

    return-void
.end method


# virtual methods
.method synthetic lambda$setup$1$com-brakefield-painter-activities-ActivitySettings$DeveloperSettingsSection(Lcom/infinite/app/ui/settings/Setting;)V
    .locals 2

    .line 218
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivitySettings$DeveloperSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {p1}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1600(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/ui/QuickHelp;

    move-result-object p1

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->showQuickHelp()Z

    move-result v0

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->visualizeQuickHelpCoverage()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/brakefield/painter/ui/QuickHelp;->updateViewVisibility(ZZ)V

    return-void
.end method

.method public refresh()V
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$DeveloperSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1500(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;->userHasCoreAccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$DeveloperSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->developerSettings:Lcom/brakefield/painter/databinding/DeveloperSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/DeveloperSettingsBinding;->card:Landroidx/cardview/widget/CardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    goto :goto_0

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$DeveloperSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->developerSettings:Lcom/brakefield/painter/databinding/DeveloperSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/DeveloperSettingsBinding;->card:Landroidx/cardview/widget/CardView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 229
    :goto_0
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$DeveloperSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->developerSettings:Lcom/brakefield/painter/databinding/DeveloperSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/DeveloperSettingsBinding;->card:Landroidx/cardview/widget/CardView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getForegroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    .line 231
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$DeveloperSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->developerSettings:Lcom/brakefield/painter/databinding/DeveloperSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/DeveloperSettingsBinding;->settingsCollection:Landroidx/recyclerview/widget/RecyclerView;

    .line 232
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setup()V
    .locals 7

    .line 185
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$DeveloperSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->developerSettings:Lcom/brakefield/painter/databinding/DeveloperSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/DeveloperSettingsBinding;->debugUiPressToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    new-instance v1, Lcom/brakefield/painter/activities/ActivitySettings$DeveloperSettingsSection$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/brakefield/painter/activities/ActivitySettings$DeveloperSettingsSection$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 188
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$DeveloperSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->developerSettings:Lcom/brakefield/painter/databinding/DeveloperSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/DeveloperSettingsBinding;->debugUiPressToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    sget-boolean v1, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->DEBUG_UI_PRESS:Z

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;->setChecked(Z)V

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    .line 191
    new-instance v1, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;

    const-string v2, "Normal version"

    const/4 v3, 0x0

    .line 192
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;

    const-string v2, "Free Version"

    const/4 v3, 0x1

    .line 193
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;

    const/4 v2, 0x0

    sget-object v2, Lkotlin/sequences/xWeI/PLNIgvxmKA;->lRQ:Ljava/lang/String;

    const/4 v4, 0x2

    .line 194
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;

    const-string v2, "Education Version"

    const/4 v5, 0x3

    .line 195
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v1, v2, v6}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v1, v0, v5

    .line 198
    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivitySettings$DeveloperSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v1}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->developerSettings:Lcom/brakefield/painter/databinding/DeveloperSettingsBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/DeveloperSettingsBinding;->testVersionDropdown:Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;

    new-instance v2, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;

    iget-object v6, p0, Lcom/brakefield/painter/activities/ActivitySettings$DeveloperSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-direct {v2, v6, v0}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;-><init>(Landroid/content/Context;[Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;)V

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;->setAdapter(Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;)V

    .line 199
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$DeveloperSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->developerSettings:Lcom/brakefield/painter/databinding/DeveloperSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/DeveloperSettingsBinding;->testVersionDropdown:Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;

    new-instance v1, Lcom/brakefield/painter/activities/ActivitySettings$DeveloperSettingsSection$1;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/activities/ActivitySettings$DeveloperSettingsSection$1;-><init>(Lcom/brakefield/painter/activities/ActivitySettings$DeveloperSettingsSection;)V

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 212
    sget-object v0, Lcom/brakefield/painter/billing/PainterVersion;->FREE:Lcom/brakefield/painter/billing/PainterVersion;

    invoke-static {v0}, Lcom/brakefield/painter/PurchaseManager;->isTestingVersionScope(Lcom/brakefield/painter/billing/PainterVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$DeveloperSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->developerSettings:Lcom/brakefield/painter/databinding/DeveloperSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/DeveloperSettingsBinding;->testVersionDropdown:Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;

    invoke-virtual {v0, v3}, Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;->setSelection(I)V

    goto :goto_0

    .line 213
    :cond_0
    sget-object v0, Lcom/brakefield/painter/billing/PainterVersion;->TRIAL:Lcom/brakefield/painter/billing/PainterVersion;

    invoke-static {v0}, Lcom/brakefield/painter/PurchaseManager;->isTestingVersionScope(Lcom/brakefield/painter/billing/PainterVersion;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$DeveloperSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->developerSettings:Lcom/brakefield/painter/databinding/DeveloperSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/DeveloperSettingsBinding;->testVersionDropdown:Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;

    invoke-virtual {v0, v4}, Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;->setSelection(I)V

    goto :goto_0

    .line 214
    :cond_1
    sget-object v0, Lcom/brakefield/painter/billing/PainterVersion;->EDUCATION:Lcom/brakefield/painter/billing/PainterVersion;

    invoke-static {v0}, Lcom/brakefield/painter/PurchaseManager;->isTestingVersionScope(Lcom/brakefield/painter/billing/PainterVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$DeveloperSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->developerSettings:Lcom/brakefield/painter/databinding/DeveloperSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/DeveloperSettingsBinding;->testVersionDropdown:Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;

    invoke-virtual {v0, v5}, Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;->setSelection(I)V

    .line 216
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$DeveloperSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->developerSettings:Lcom/brakefield/painter/databinding/DeveloperSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/DeveloperSettingsBinding;->settingsCollection:Landroidx/recyclerview/widget/RecyclerView;

    .line 217
    new-instance v1, Lcom/infinite/app/ui/settings/SettingsAdapter;

    invoke-direct {p0}, Lcom/brakefield/painter/activities/ActivitySettings$DeveloperSettingsSection;->getInternalSettings()Lcom/infinite/app/ui/settings/SettingsAdapter$Provider;

    move-result-object v2

    new-instance v3, Lcom/brakefield/painter/activities/ActivitySettings$DeveloperSettingsSection$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/brakefield/painter/activities/ActivitySettings$DeveloperSettingsSection$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/activities/ActivitySettings$DeveloperSettingsSection;)V

    invoke-direct {v1, v2, v3}, Lcom/infinite/app/ui/settings/SettingsAdapter;-><init>(Lcom/infinite/app/ui/settings/SettingsAdapter$Provider;Lcom/infinite/app/ui/settings/SettingsAdapter$OnSettingChangedListener;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 220
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.class Lcom/brakefield/painter/activities/ActivitySettings$CompanionSettingsSection;
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
    name = "CompanionSettingsSection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/activities/ActivitySettings;


# direct methods
.method private constructor <init>(Lcom/brakefield/painter/activities/ActivitySettings;)V
    .locals 0

    .line 853
    iput-object p1, p0, Lcom/brakefield/painter/activities/ActivitySettings$CompanionSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/brakefield/painter/activities/ActivitySettings;Lcom/brakefield/painter/activities/ActivitySettings$1;)V
    .locals 0

    .line 853
    invoke-direct {p0, p1}, Lcom/brakefield/painter/activities/ActivitySettings$CompanionSettingsSection;-><init>(Lcom/brakefield/painter/activities/ActivitySettings;)V

    return-void
.end method

.method private setupSection(Lcom/brakefield/painter/addons/Addon;Lcom/brakefield/painter/databinding/CompanionSettingsItemBinding;)V
    .locals 2

    .line 862
    iget-object v0, p2, Lcom/brakefield/painter/databinding/CompanionSettingsItemBinding;->name:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-virtual {p1}, Lcom/brakefield/painter/addons/Addon;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 863
    iget-object v0, p2, Lcom/brakefield/painter/databinding/CompanionSettingsItemBinding;->description:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-virtual {p1}, Lcom/brakefield/painter/addons/Addon;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 865
    iget-object v0, p2, Lcom/brakefield/painter/databinding/CompanionSettingsItemBinding;->activeToggle:Lcom/brakefield/infinitestudio/ui/CustomSwitch;

    new-instance v1, Lcom/brakefield/painter/activities/ActivitySettings$CompanionSettingsSection$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/brakefield/painter/activities/ActivitySettings$CompanionSettingsSection$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/activities/ActivitySettings$CompanionSettingsSection;Lcom/brakefield/painter/addons/Addon;Lcom/brakefield/painter/databinding/CompanionSettingsItemBinding;)V

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 870
    iget-object v0, p2, Lcom/brakefield/painter/databinding/CompanionSettingsItemBinding;->activeToggle:Lcom/brakefield/infinitestudio/ui/CustomSwitch;

    invoke-virtual {p1}, Lcom/brakefield/painter/addons/Addon;->isActive()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->setChecked(Z)V

    .line 872
    iget-object v0, p2, Lcom/brakefield/painter/databinding/CompanionSettingsItemBinding;->launchButton:Landroid/widget/Button;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 873
    iget-object v0, p2, Lcom/brakefield/painter/databinding/CompanionSettingsItemBinding;->launchButton:Landroid/widget/Button;

    new-instance v1, Lcom/brakefield/painter/activities/ActivitySettings$CompanionSettingsSection$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/brakefield/painter/activities/ActivitySettings$CompanionSettingsSection$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/activities/ActivitySettings$CompanionSettingsSection;Lcom/brakefield/painter/addons/Addon;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 875
    iget-object v0, p2, Lcom/brakefield/painter/databinding/CompanionSettingsItemBinding;->uninstallButton:Landroid/widget/Button;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 876
    iget-object v0, p2, Lcom/brakefield/painter/databinding/CompanionSettingsItemBinding;->uninstallButton:Landroid/widget/Button;

    new-instance v1, Lcom/brakefield/painter/activities/ActivitySettings$CompanionSettingsSection$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/brakefield/painter/activities/ActivitySettings$CompanionSettingsSection$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/activities/ActivitySettings$CompanionSettingsSection;Lcom/brakefield/painter/addons/Addon;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 881
    iget-object p2, p2, Lcom/brakefield/painter/databinding/CompanionSettingsItemBinding;->installButton:Landroid/widget/Button;

    new-instance v0, Lcom/brakefield/painter/activities/ActivitySettings$CompanionSettingsSection$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/brakefield/painter/activities/ActivitySettings$CompanionSettingsSection$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/activities/ActivitySettings$CompanionSettingsSection;Lcom/brakefield/painter/addons/Addon;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$setupSection$0$com-brakefield-painter-activities-ActivitySettings$CompanionSettingsSection(Lcom/brakefield/painter/addons/Addon;Lcom/brakefield/painter/databinding/CompanionSettingsItemBinding;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 866
    iget-object p3, p0, Lcom/brakefield/painter/activities/ActivitySettings$CompanionSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-virtual {p1, p3, p4}, Lcom/brakefield/painter/addons/Addon;->setActive(Landroid/content/Context;Z)V

    if-eqz p4, :cond_0

    .line 867
    iget-object p1, p2, Lcom/brakefield/painter/databinding/CompanionSettingsItemBinding;->settings:Landroid/widget/TableLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TableLayout;->setVisibility(I)V

    goto :goto_0

    .line 868
    :cond_0
    iget-object p1, p2, Lcom/brakefield/painter/databinding/CompanionSettingsItemBinding;->settings:Landroid/widget/TableLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TableLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method synthetic lambda$setupSection$1$com-brakefield-painter-activities-ActivitySettings$CompanionSettingsSection(Lcom/brakefield/painter/addons/Addon;Landroid/view/View;)V
    .locals 0

    .line 873
    iget-object p2, p0, Lcom/brakefield/painter/activities/ActivitySettings$CompanionSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-virtual {p1, p2}, Lcom/brakefield/painter/addons/Addon;->showScreen(Landroid/content/Context;)V

    return-void
.end method

.method synthetic lambda$setupSection$2$com-brakefield-painter-activities-ActivitySettings$CompanionSettingsSection(Lcom/brakefield/painter/addons/Addon;Landroid/view/View;)V
    .locals 0

    .line 877
    iget-object p2, p0, Lcom/brakefield/painter/activities/ActivitySettings$CompanionSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-virtual {p1, p2}, Lcom/brakefield/painter/addons/Addon;->uninstall(Landroid/content/Context;)V

    .line 878
    invoke-virtual {p0}, Lcom/brakefield/painter/activities/ActivitySettings$CompanionSettingsSection;->refresh()V

    return-void
.end method

.method synthetic lambda$setupSection$3$com-brakefield-painter-activities-ActivitySettings$CompanionSettingsSection(Lcom/brakefield/painter/addons/Addon;Landroid/view/View;)V
    .locals 1

    .line 883
    instance-of p2, p1, Lcom/brakefield/painter/addons/OnDemandAddon;

    if-eqz p2, :cond_0

    .line 884
    new-instance p2, Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$CompanionSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-direct {p2, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 885
    new-instance v0, Lcom/brakefield/painter/activities/ActivitySettings$CompanionSettingsSection$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/brakefield/painter/activities/ActivitySettings$CompanionSettingsSection$1;-><init>(Lcom/brakefield/painter/activities/ActivitySettings$CompanionSettingsSection;Landroid/app/ProgressDialog;Lcom/brakefield/painter/addons/Addon;)V

    .line 908
    check-cast p1, Lcom/brakefield/painter/addons/OnDemandAddon;

    .line 909
    iget-object p2, p0, Lcom/brakefield/painter/activities/ActivitySettings$CompanionSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-virtual {p2}, Lcom/brakefield/painter/activities/ActivitySettings;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lcom/brakefield/painter/addons/OnDemandAddon;->install(Landroid/content/Context;Lcom/brakefield/painter/addons/OnDemandAddon$OnInstallListener;)V

    goto :goto_0

    .line 911
    :cond_0
    iget-object p2, p0, Lcom/brakefield/painter/activities/ActivitySettings$CompanionSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-virtual {p1, p2}, Lcom/brakefield/painter/addons/Addon;->install(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public refresh()V
    .locals 6

    .line 918
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$CompanionSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->companionSettings:Lcom/brakefield/painter/databinding/CompanionSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CompanionSettingsBinding;->card:Landroidx/cardview/widget/CardView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getForegroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    .line 920
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$CompanionSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->companionSettings:Lcom/brakefield/painter/databinding/CompanionSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CompanionSettingsBinding;->instapickService:Lcom/brakefield/painter/databinding/CompanionSettingsItemBinding;

    .line 921
    sget-object v1, Lcom/brakefield/painter/addons/Addons;->instaPick:Lcom/brakefield/painter/addons/instapick/InstaPickOnDemandAddon;

    .line 923
    iget-object v2, p0, Lcom/brakefield/painter/activities/ActivitySettings$CompanionSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-virtual {v1, v2}, Lcom/brakefield/painter/addons/Addon;->isInstalled(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz v2, :cond_1

    .line 926
    iget-object v2, v0, Lcom/brakefield/painter/databinding/CompanionSettingsItemBinding;->activeToggle:Lcom/brakefield/infinitestudio/ui/CustomSwitch;

    invoke-virtual {v2, v3}, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->setVisibility(I)V

    .line 927
    iget-object v2, v0, Lcom/brakefield/painter/databinding/CompanionSettingsItemBinding;->activeToggle:Lcom/brakefield/infinitestudio/ui/CustomSwitch;

    invoke-virtual {v1}, Lcom/brakefield/painter/addons/Addon;->isActive()Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->setChecked(Z)V

    .line 928
    invoke-virtual {v1}, Lcom/brakefield/painter/addons/Addon;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/brakefield/painter/databinding/CompanionSettingsItemBinding;->settings:Landroid/widget/TableLayout;

    invoke-virtual {v1, v3}, Landroid/widget/TableLayout;->setVisibility(I)V

    goto :goto_0

    .line 929
    :cond_0
    iget-object v1, v0, Lcom/brakefield/painter/databinding/CompanionSettingsItemBinding;->settings:Landroid/widget/TableLayout;

    invoke-virtual {v1, v4}, Landroid/widget/TableLayout;->setVisibility(I)V

    .line 930
    :goto_0
    iget-object v0, v0, Lcom/brakefield/painter/databinding/CompanionSettingsItemBinding;->installButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 932
    :cond_1
    iget-object v1, v0, Lcom/brakefield/painter/databinding/CompanionSettingsItemBinding;->activeToggle:Lcom/brakefield/infinitestudio/ui/CustomSwitch;

    invoke-virtual {v1, v4}, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->setVisibility(I)V

    .line 933
    iget-object v1, v0, Lcom/brakefield/painter/databinding/CompanionSettingsItemBinding;->settings:Landroid/widget/TableLayout;

    invoke-virtual {v1, v4}, Landroid/widget/TableLayout;->setVisibility(I)V

    .line 934
    iget-object v0, v0, Lcom/brakefield/painter/databinding/CompanionSettingsItemBinding;->installButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public setup()V
    .locals 2

    .line 857
    sget-object v0, Lcom/brakefield/painter/addons/Addons;->instaPick:Lcom/brakefield/painter/addons/instapick/InstaPickOnDemandAddon;

    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivitySettings$CompanionSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v1}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->companionSettings:Lcom/brakefield/painter/databinding/CompanionSettingsBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/CompanionSettingsBinding;->instapickService:Lcom/brakefield/painter/databinding/CompanionSettingsItemBinding;

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/activities/ActivitySettings$CompanionSettingsSection;->setupSection(Lcom/brakefield/painter/addons/Addon;Lcom/brakefield/painter/databinding/CompanionSettingsItemBinding;)V

    return-void
.end method

.class Lcom/brakefield/painter/activities/ActivitySettings$LanguageSettingsSection;
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
    name = "LanguageSettingsSection"
.end annotation


# instance fields
.field languageInstaller:Lcom/brakefield/infinitestudio/LanguageInstaller;

.field final synthetic this$0:Lcom/brakefield/painter/activities/ActivitySettings;


# direct methods
.method private constructor <init>(Lcom/brakefield/painter/activities/ActivitySettings;)V
    .locals 0

    .line 563
    iput-object p1, p0, Lcom/brakefield/painter/activities/ActivitySettings$LanguageSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/brakefield/painter/activities/ActivitySettings;Lcom/brakefield/painter/activities/ActivitySettings$1;)V
    .locals 0

    .line 563
    invoke-direct {p0, p1}, Lcom/brakefield/painter/activities/ActivitySettings$LanguageSettingsSection;-><init>(Lcom/brakefield/painter/activities/ActivitySettings;)V

    return-void
.end method


# virtual methods
.method public getLocaleFromConfiguration(Landroid/content/res/Configuration;)Ljava/util/Locale;
    .locals 1

    .line 633
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p1

    return-object p1
.end method

.method public refresh()V
    .locals 2

    .line 629
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$LanguageSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->languageSettings:Lcom/brakefield/painter/databinding/LanguageSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LanguageSettingsBinding;->card:Landroidx/cardview/widget/CardView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getForegroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    return-void
.end method

.method public setup()V
    .locals 8

    .line 570
    new-instance v0, Lcom/brakefield/infinitestudio/LanguageInstaller;

    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivitySettings$LanguageSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-direct {v0, v1}, Lcom/brakefield/infinitestudio/LanguageInstaller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$LanguageSettingsSection;->languageInstaller:Lcom/brakefield/infinitestudio/LanguageInstaller;

    .line 572
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$LanguageSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/Localization;->loadLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    if-nez v0, :cond_0

    .line 574
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/brakefield/painter/activities/ActivitySettings$LanguageSettingsSection;->getLocaleFromConfiguration(Landroid/content/res/Configuration;)Ljava/util/Locale;

    move-result-object v0

    .line 577
    :cond_0
    invoke-static {}, Lcom/brakefield/infinitestudio/AppLocales;->size()I

    move-result v1

    .line 578
    new-array v2, v1, [Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    .line 580
    invoke-static {v3}, Lcom/brakefield/infinitestudio/AppLocales;->at(I)Ljava/util/Locale;

    move-result-object v4

    if-nez v4, :cond_1

    .line 583
    iget-object v5, p0, Lcom/brakefield/painter/activities/ActivitySettings$LanguageSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-virtual {v5}, Lcom/brakefield/painter/activities/ActivitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1200fa

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 585
    :cond_1
    invoke-virtual {v4, v0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 586
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v6}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 587
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "  -  "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 589
    :cond_2
    :goto_1
    new-instance v6, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;

    invoke-direct {v6, v5, v4}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v6, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 592
    :cond_3
    invoke-static {v0}, Lcom/brakefield/infinitestudio/AppLocales;->find(Ljava/util/Locale;)I

    move-result v0

    .line 593
    invoke-static {v0}, Lcom/brakefield/infinitestudio/AppLocales;->at(I)Ljava/util/Locale;

    move-result-object v0

    .line 595
    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivitySettings$LanguageSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v1}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->languageSettings:Lcom/brakefield/painter/databinding/LanguageSettingsBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/LanguageSettingsBinding;->languageDropdown:Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;

    new-instance v3, Lcom/brakefield/painter/activities/ActivitySettings$LanguageSettingsSection$1;

    invoke-direct {v3, p0, v0}, Lcom/brakefield/painter/activities/ActivitySettings$LanguageSettingsSection$1;-><init>(Lcom/brakefield/painter/activities/ActivitySettings$LanguageSettingsSection;Ljava/util/Locale;)V

    new-instance v4, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;

    iget-object v5, p0, Lcom/brakefield/painter/activities/ActivitySettings$LanguageSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-direct {v4, v5, v2}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;-><init>(Landroid/content/Context;[Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;)V

    invoke-static {v1, v3, v4, v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setupDropdown(Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;Landroid/widget/AdapterView$OnItemSelectedListener;Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;Ljava/lang/Object;)V

    return-void
.end method

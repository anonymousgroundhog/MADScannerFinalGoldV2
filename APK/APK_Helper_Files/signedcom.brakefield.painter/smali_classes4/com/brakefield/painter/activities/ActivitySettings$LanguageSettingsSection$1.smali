.class Lcom/brakefield/painter/activities/ActivitySettings$LanguageSettingsSection$1;
.super Ljava/lang/Object;
.source "ActivitySettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/activities/ActivitySettings$LanguageSettingsSection;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/brakefield/painter/activities/ActivitySettings$LanguageSettingsSection;

.field final synthetic val$currentLocale:Ljava/util/Locale;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/activities/ActivitySettings$LanguageSettingsSection;Ljava/util/Locale;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 596
    iput-object p1, p0, Lcom/brakefield/painter/activities/ActivitySettings$LanguageSettingsSection$1;->this$1:Lcom/brakefield/painter/activities/ActivitySettings$LanguageSettingsSection;

    iput-object p2, p0, Lcom/brakefield/painter/activities/ActivitySettings$LanguageSettingsSection$1;->val$currentLocale:Ljava/util/Locale;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onItemSelected$0$com-brakefield-painter-activities-ActivitySettings$LanguageSettingsSection$1()V
    .locals 1

    .line 607
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$LanguageSettingsSection$1;->this$1:Lcom/brakefield/painter/activities/ActivitySettings$LanguageSettingsSection;

    iget-object v0, v0, Lcom/brakefield/painter/activities/ActivitySettings$LanguageSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-virtual {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->recreate()V

    const/4 v0, 0x1

    .line 608
    sput-boolean v0, Lcom/brakefield/infinitestudio/ui/ThemeManager;->refresh:Z

    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 599
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 601
    instance-of p2, p1, Ljava/util/Locale;

    if-eqz p2, :cond_0

    .line 602
    check-cast p1, Ljava/util/Locale;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 604
    :goto_0
    iget-object p2, p0, Lcom/brakefield/painter/activities/ActivitySettings$LanguageSettingsSection$1;->val$currentLocale:Ljava/util/Locale;

    if-eq p2, p1, :cond_3

    .line 605
    iget-object p2, p0, Lcom/brakefield/painter/activities/ActivitySettings$LanguageSettingsSection$1;->this$1:Lcom/brakefield/painter/activities/ActivitySettings$LanguageSettingsSection;

    iget-object p2, p2, Lcom/brakefield/painter/activities/ActivitySettings$LanguageSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {p2, p1}, Lcom/brakefield/infinitestudio/Localization;->saveLocale(Landroid/content/Context;Ljava/util/Locale;)V

    .line 606
    new-instance p2, Lcom/brakefield/painter/activities/ActivitySettings$LanguageSettingsSection$1$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/brakefield/painter/activities/ActivitySettings$LanguageSettingsSection$1$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/activities/ActivitySettings$LanguageSettingsSection$1;)V

    if-eqz p1, :cond_2

    .line 611
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    .line 612
    iget-object p3, p0, Lcom/brakefield/painter/activities/ActivitySettings$LanguageSettingsSection$1;->this$1:Lcom/brakefield/painter/activities/ActivitySettings$LanguageSettingsSection;

    iget-object p3, p3, Lcom/brakefield/painter/activities/ActivitySettings$LanguageSettingsSection;->languageInstaller:Lcom/brakefield/infinitestudio/LanguageInstaller;

    invoke-virtual {p3, p1}, Lcom/brakefield/infinitestudio/LanguageInstaller;->isInstalled(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 613
    iget-object p3, p0, Lcom/brakefield/painter/activities/ActivitySettings$LanguageSettingsSection$1;->this$1:Lcom/brakefield/painter/activities/ActivitySettings$LanguageSettingsSection;

    iget-object p3, p3, Lcom/brakefield/painter/activities/ActivitySettings$LanguageSettingsSection;->languageInstaller:Lcom/brakefield/infinitestudio/LanguageInstaller;

    invoke-virtual {p3, p1, p2}, Lcom/brakefield/infinitestudio/LanguageInstaller;->install(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 614
    :cond_1
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 616
    :cond_2
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_3
    :goto_1
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

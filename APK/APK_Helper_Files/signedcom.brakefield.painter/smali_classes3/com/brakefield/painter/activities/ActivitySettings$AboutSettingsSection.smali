.class Lcom/brakefield/painter/activities/ActivitySettings$AboutSettingsSection;
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
    name = "AboutSettingsSection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/activities/ActivitySettings;


# direct methods
.method private constructor <init>(Lcom/brakefield/painter/activities/ActivitySettings;)V
    .locals 0

    .line 945
    iput-object p1, p0, Lcom/brakefield/painter/activities/ActivitySettings$AboutSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/brakefield/painter/activities/ActivitySettings;Lcom/brakefield/painter/activities/ActivitySettings$1;)V
    .locals 0

    .line 945
    invoke-direct {p0, p1}, Lcom/brakefield/painter/activities/ActivitySettings$AboutSettingsSection;-><init>(Lcom/brakefield/painter/activities/ActivitySettings;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$setup$0$com-brakefield-painter-activities-ActivitySettings$AboutSettingsSection(Landroid/view/View;)V
    .locals 1

    .line 950
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivitySettings$AboutSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/brakefield/painter/ShareManager;->showUploadPolicy(Landroid/app/Activity;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic lambda$setup$1$com-brakefield-painter-activities-ActivitySettings$AboutSettingsSection(Landroid/view/View;)V
    .locals 2

    .line 954
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$AboutSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    const-class v1, Lcom/brakefield/infinitestudio/activities/ActivityWeb;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "EXTRA_WEBSITE_URL"

    const-string v1, "https://www.infinitestudio.art/painter/PainterThirdPartyLicenses.html"

    .line 955
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "EXTRA_SHOW_BACK_NAVIGATION"

    const/4 v1, 0x1

    .line 956
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 957
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$AboutSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-virtual {v0, p1}, Lcom/brakefield/painter/activities/ActivitySettings;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic lambda$setup$2$com-brakefield-painter-activities-ActivitySettings$AboutSettingsSection(Landroid/view/View;)V
    .locals 7

    .line 963
    invoke-static {}, Lcom/brakefield/painter/PurchaseManager;->getPurchases()[Lcom/brakefield/infinitestudio/billing/InAppPurchase;

    move-result-object p1

    const-string v0, "line.separator"

    .line 965
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 967
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 969
    invoke-static {}, Lcom/brakefield/painter/PurchaseManager;->getBillingServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":    "

    .line 970
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 971
    invoke-static {}, Lcom/brakefield/painter/PurchaseManager;->getBillingServiceStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 972
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 973
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 975
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Purchases:"

    .line 976
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 977
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 979
    array-length v2, p1

    if-lez v2, :cond_3

    .line 980
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, p1, v3

    .line 981
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 982
    invoke-static {v4}, Lcom/brakefield/painter/PurchaseManager;->getPurchaseTitle(Lcom/brakefield/infinitestudio/billing/InAppPurchase;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 983
    invoke-virtual {v4}, Lcom/brakefield/infinitestudio/billing/InAppPurchase;->getPurchaseDetails()Lcom/android/billingclient/api/Purchase;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 985
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 986
    invoke-virtual {v4}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    goto :goto_1

    :cond_0
    const-string v5, "Pending"

    .line 991
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v5, "Purchased"

    .line 988
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v5, "    "

    .line 994
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 995
    invoke-virtual {v4}, Lcom/android/billingclient/api/Purchase;->getPurchaseTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/brakefield/infinitestudio/utils/TextFormatter;->formatDate(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 997
    invoke-virtual {v4}, Lcom/android/billingclient/api/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 999
    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const-string p1, "No Purchases Found"

    .line 1002
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1004
    :cond_4
    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$AboutSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-direct {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 1005
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const v0, 0x7f1209b7

    .line 1006
    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 1007
    invoke-virtual {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method public refresh()V
    .locals 2

    .line 1013
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$AboutSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->aboutSettings:Lcom/brakefield/painter/databinding/AboutSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/AboutSettingsBinding;->card:Landroidx/cardview/widget/CardView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getForegroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    return-void
.end method

.method public setup()V
    .locals 2

    .line 949
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$AboutSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->aboutSettings:Lcom/brakefield/painter/databinding/AboutSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/AboutSettingsBinding;->uploadPolicyButton:Landroid/widget/Button;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 950
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$AboutSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->aboutSettings:Lcom/brakefield/painter/databinding/AboutSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/AboutSettingsBinding;->uploadPolicyButton:Landroid/widget/Button;

    new-instance v1, Lcom/brakefield/painter/activities/ActivitySettings$AboutSettingsSection$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/activities/ActivitySettings$AboutSettingsSection$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/activities/ActivitySettings$AboutSettingsSection;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 952
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$AboutSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->aboutSettings:Lcom/brakefield/painter/databinding/AboutSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/AboutSettingsBinding;->licensesButton:Landroid/widget/Button;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 953
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$AboutSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->aboutSettings:Lcom/brakefield/painter/databinding/AboutSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/AboutSettingsBinding;->licensesButton:Landroid/widget/Button;

    new-instance v1, Lcom/brakefield/painter/activities/ActivitySettings$AboutSettingsSection$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/activities/ActivitySettings$AboutSettingsSection$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/activities/ActivitySettings$AboutSettingsSection;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 960
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$AboutSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->aboutSettings:Lcom/brakefield/painter/databinding/AboutSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/AboutSettingsBinding;->purchasesButton:Landroid/widget/Button;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 961
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$AboutSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->aboutSettings:Lcom/brakefield/painter/databinding/AboutSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/AboutSettingsBinding;->purchasesButton:Landroid/widget/Button;

    new-instance v1, Lcom/brakefield/painter/activities/ActivitySettings$AboutSettingsSection$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/activities/ActivitySettings$AboutSettingsSection$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/activities/ActivitySettings$AboutSettingsSection;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

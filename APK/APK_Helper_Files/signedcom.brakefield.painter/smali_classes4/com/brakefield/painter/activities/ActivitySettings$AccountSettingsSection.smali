.class Lcom/brakefield/painter/activities/ActivitySettings$AccountSettingsSection;
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
    name = "AccountSettingsSection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/activities/ActivitySettings;


# direct methods
.method private constructor <init>(Lcom/brakefield/painter/activities/ActivitySettings;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/brakefield/painter/activities/ActivitySettings$AccountSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/brakefield/painter/activities/ActivitySettings;Lcom/brakefield/painter/activities/ActivitySettings$1;)V
    .locals 0

    .line 252
    invoke-direct {p0, p1}, Lcom/brakefield/painter/activities/ActivitySettings$AccountSettingsSection;-><init>(Lcom/brakefield/painter/activities/ActivitySettings;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$setup$0$com-brakefield-painter-activities-ActivitySettings$AccountSettingsSection(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 265
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.MAIN"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    sget-object p2, Lcom/google/android/material/navigation/PjId/DFPED;->LxVgRiTjGwK:Ljava/lang/String;

    .line 266
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    iget-object p2, p0, Lcom/brakefield/painter/activities/ActivitySettings$AccountSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-virtual {p2, p1}, Lcom/brakefield/painter/activities/ActivitySettings;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic lambda$setup$1$com-brakefield-painter-activities-ActivitySettings$AccountSettingsSection(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 269
    new-instance p1, Lcom/brakefield/infinitestudio/account/UserFunctions$SendUserEmailVerification;

    iget-object p2, p0, Lcom/brakefield/painter/activities/ActivitySettings$AccountSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {p2}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1500(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/brakefield/infinitestudio/account/UserFunctions$SendUserEmailVerification;-><init>(Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;)V

    invoke-static {p1}, Lcom/brakefield/infinitestudio/account/UserFunctions;->callAsync(Lcom/brakefield/infinitestudio/account/UserFunctions$APICall;)V

    return-void
.end method

.method synthetic lambda$setup$2$com-brakefield-painter-activities-ActivitySettings$AccountSettingsSection(Landroid/view/View;)V
    .locals 6

    .line 263
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$AccountSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    const v1, 0x7f120130

    const v2, 0x7f1209be

    const v3, 0x7f120a4f

    new-instance v4, Lcom/brakefield/painter/activities/ActivitySettings$AccountSettingsSection$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0}, Lcom/brakefield/painter/activities/ActivitySettings$AccountSettingsSection$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/activities/ActivitySettings$AccountSettingsSection;)V

    new-instance v5, Lcom/brakefield/painter/activities/ActivitySettings$AccountSettingsSection$$ExternalSyntheticLambda4;

    invoke-direct {v5, p0}, Lcom/brakefield/painter/activities/ActivitySettings$AccountSettingsSection$$ExternalSyntheticLambda4;-><init>(Lcom/brakefield/painter/activities/ActivitySettings$AccountSettingsSection;)V

    invoke-static/range {v0 .. v5}, Lcom/brakefield/infinitestudio/Dialogs;->showAlert(Landroid/content/Context;IIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method synthetic lambda$setup$3$com-brakefield-painter-activities-ActivitySettings$AccountSettingsSection(Lcom/brakefield/infinitestudio/account/UserInfoCache;Ljava/lang/String;)V
    .locals 0

    .line 283
    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/account/UserInfoCache;->storeInfo(Ljava/lang/String;)V

    .line 284
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivitySettings$AccountSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {p1}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1500(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;->loginUser(Ljava/lang/String;)V

    .line 285
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivitySettings$AccountSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {p1}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1700(Lcom/brakefield/painter/activities/ActivitySettings;)V

    return-void
.end method

.method synthetic lambda$setup$4$com-brakefield-painter-activities-ActivitySettings$AccountSettingsSection(Landroid/view/View;)V
    .locals 2

    .line 275
    new-instance p1, Lcom/brakefield/infinitestudio/account/UserInfoCache;

    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$AccountSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-virtual {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/account/UserInfoCache;-><init>(Landroid/content/Context;)V

    .line 277
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$AccountSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1500(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;->isUserLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/account/UserInfoCache;->clearInfo()V

    .line 279
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivitySettings$AccountSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {p1}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1500(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;

    move-result-object p1

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;->logoutUser()V

    .line 280
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivitySettings$AccountSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {p1}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1700(Lcom/brakefield/painter/activities/ActivitySettings;)V

    goto :goto_0

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$AccountSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1800(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/infinitestudio/account/LoginActivity$Launcher;

    move-result-object v0

    new-instance v1, Lcom/brakefield/painter/activities/ActivitySettings$AccountSettingsSection$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/brakefield/painter/activities/ActivitySettings$AccountSettingsSection$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/activities/ActivitySettings$AccountSettingsSection;Lcom/brakefield/infinitestudio/account/UserInfoCache;)V

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/account/LoginActivity$Launcher;->loginUser(Lcom/brakefield/infinitestudio/account/LoginActivity$Launcher$OnLoginListener;)V

    :goto_0
    return-void
.end method

.method public refresh()V
    .locals 2

    .line 294
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$AccountSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->accountSettings:Lcom/brakefield/painter/databinding/AccountSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/AccountSettingsBinding;->card:Landroidx/cardview/widget/CardView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getForegroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    .line 296
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$AccountSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1500(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;->isUserLoggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$AccountSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->accountSettings:Lcom/brakefield/painter/databinding/AccountSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/AccountSettingsBinding;->userNameText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    const v1, 0x7f1209b1

    invoke-static {v1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$AccountSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->accountSettings:Lcom/brakefield/painter/databinding/AccountSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/AccountSettingsBinding;->userEmailText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$AccountSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->accountSettings:Lcom/brakefield/painter/databinding/AccountSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/AccountSettingsBinding;->loginButton:Landroid/widget/Button;

    const v1, 0x7f12024e

    invoke-static {v1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$AccountSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->accountSettings:Lcom/brakefield/painter/databinding/AccountSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/AccountSettingsBinding;->userNameText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivitySettings$AccountSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v1}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1500(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$AccountSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->accountSettings:Lcom/brakefield/painter/databinding/AccountSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/AccountSettingsBinding;->userEmailText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivitySettings$AccountSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v1}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1500(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;->getUserEmailAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$AccountSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->accountSettings:Lcom/brakefield/painter/databinding/AccountSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/AccountSettingsBinding;->loginButton:Landroid/widget/Button;

    const v1, 0x7f12024f

    invoke-static {v1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 306
    :goto_0
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$AccountSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1500(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;->isUserVerified()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$AccountSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1500(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;->isUserLoggedIn()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$AccountSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->accountSettings:Lcom/brakefield/painter/databinding/AccountSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/AccountSettingsBinding;->verifyButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 307
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$AccountSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->accountSettings:Lcom/brakefield/painter/databinding/AccountSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/AccountSettingsBinding;->verifyButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method public setup()V
    .locals 2

    .line 257
    invoke-static {}, Lcom/brakefield/painter/PurchaseManager;->isEducationVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$AccountSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->accountSettings:Lcom/brakefield/painter/databinding/AccountSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/AccountSettingsBinding;->card:Landroidx/cardview/widget/CardView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$AccountSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->accountSettings:Lcom/brakefield/painter/databinding/AccountSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/AccountSettingsBinding;->verifyButton:Landroid/widget/Button;

    new-instance v1, Lcom/brakefield/painter/activities/ActivitySettings$AccountSettingsSection$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/activities/ActivitySettings$AccountSettingsSection$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/activities/ActivitySettings$AccountSettingsSection;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$AccountSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->accountSettings:Lcom/brakefield/painter/databinding/AccountSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/AccountSettingsBinding;->loginButton:Landroid/widget/Button;

    new-instance v1, Lcom/brakefield/painter/activities/ActivitySettings$AccountSettingsSection$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/activities/ActivitySettings$AccountSettingsSection$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/activities/ActivitySettings$AccountSettingsSection;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
